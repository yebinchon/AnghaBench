
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int errorMessage; } ;
typedef int PGresult ;
typedef TYPE_1__ PGconn ;


 int MAX_ALGORITHM_NAME_LEN ;
 scalar_t__ MD5_PASSWD_LEN ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int * PQexec (TYPE_1__*,char*) ;
 char* PQgetvalue (int *,int ,int ) ;
 int PQnfields (int *) ;
 int PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int free (char*) ;
 int libpq_gettext (char*) ;
 char* malloc (scalar_t__) ;
 char* pg_fe_scram_build_secret (char const*) ;
 int pg_md5_encrypt (char const*,char const*,int,char*) ;
 int printfPQExpBuffer (int *,int ,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;

char *
PQencryptPasswordConn(PGconn *conn, const char *passwd, const char *user,
       const char *algorithm)
{

 char algobuf[50 + 1];
 char *crypt_pwd = ((void*)0);

 if (!conn)
  return ((void*)0);


 if (algorithm == ((void*)0))
 {
  PGresult *res;
  char *val;

  res = PQexec(conn, "show password_encryption");
  if (res == ((void*)0))
  {

   return ((void*)0);
  }
  if (PQresultStatus(res) != PGRES_TUPLES_OK)
  {

   PQclear(res);
   return ((void*)0);
  }
  if (PQntuples(res) != 1 || PQnfields(res) != 1)
  {
   PQclear(res);
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("unexpected shape of result set returned for SHOW\n"));
   return ((void*)0);
  }
  val = PQgetvalue(res, 0, 0);

  if (strlen(val) > 50)
  {
   PQclear(res);
   printfPQExpBuffer(&conn->errorMessage,
         libpq_gettext("password_encryption value too long\n"));
   return ((void*)0);
  }
  strcpy(algobuf, val);
  PQclear(res);

  algorithm = algobuf;
 }






 if (strcmp(algorithm, "on") == 0 ||
  strcmp(algorithm, "off") == 0)
  algorithm = "md5";




 if (strcmp(algorithm, "scram-sha-256") == 0)
 {
  crypt_pwd = pg_fe_scram_build_secret(passwd);
 }
 else if (strcmp(algorithm, "md5") == 0)
 {
  crypt_pwd = malloc(MD5_PASSWD_LEN + 1);
  if (crypt_pwd)
  {
   if (!pg_md5_encrypt(passwd, user, strlen(user), crypt_pwd))
   {
    free(crypt_pwd);
    crypt_pwd = ((void*)0);
   }
  }
 }
 else
 {
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("unrecognized password encryption algorithm \"%s\"\n"),
        algorithm);
  return ((void*)0);
 }

 if (!crypt_pwd)
  printfPQExpBuffer(&conn->errorMessage,
        libpq_gettext("out of memory\n"));

 return crypt_pwd;
}
