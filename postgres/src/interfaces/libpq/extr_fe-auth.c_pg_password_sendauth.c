
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* pguser; int pversion; int errorMessage; } ;
typedef TYPE_1__ PGconn ;
typedef int AuthRequest ;




 int MD5_PASSWD_LEN ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int STATUS_ERROR ;
 int free (char*) ;
 int libpq_gettext (char*) ;
 char* malloc (int) ;
 int pg_md5_encrypt (char const*,char*,int,char*) ;
 scalar_t__ pqGetnchar (char*,int,TYPE_1__*) ;
 int pqPacketSend (TYPE_1__*,char,char const*,int) ;
 int printfPQExpBuffer (int *,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
pg_password_sendauth(PGconn *conn, const char *password, AuthRequest areq)
{
 int ret;
 char *crypt_pwd = ((void*)0);
 const char *pwd_to_send;
 char md5Salt[4];


 if (areq == 129)
 {
  if (pqGetnchar(md5Salt, 4, conn))
   return STATUS_ERROR;
 }



 switch (areq)
 {
  case 129:
   {
    char *crypt_pwd2;


    crypt_pwd = malloc(2 * (MD5_PASSWD_LEN + 1));
    if (!crypt_pwd)
    {
     printfPQExpBuffer(&conn->errorMessage,
           libpq_gettext("out of memory\n"));
     return STATUS_ERROR;
    }

    crypt_pwd2 = crypt_pwd + MD5_PASSWD_LEN + 1;
    if (!pg_md5_encrypt(password, conn->pguser,
         strlen(conn->pguser), crypt_pwd2))
    {
     free(crypt_pwd);
     return STATUS_ERROR;
    }
    if (!pg_md5_encrypt(crypt_pwd2 + strlen("md5"), md5Salt,
         4, crypt_pwd))
    {
     free(crypt_pwd);
     return STATUS_ERROR;
    }

    pwd_to_send = crypt_pwd;
    break;
   }
  case 128:
   pwd_to_send = password;
   break;
  default:
   return STATUS_ERROR;
 }

 if (PG_PROTOCOL_MAJOR(conn->pversion) >= 3)
  ret = pqPacketSend(conn, 'p', pwd_to_send, strlen(pwd_to_send) + 1);
 else
  ret = pqPacketSend(conn, 0, pwd_to_send, strlen(pwd_to_send) + 1);
 if (crypt_pwd)
  free(crypt_pwd);
 return ret;
}
