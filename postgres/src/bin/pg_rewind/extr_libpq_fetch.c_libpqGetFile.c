
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;


 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int * PQexecParams (int ,char*,int,int *,char const**,int *,int *,int) ;
 scalar_t__ PQgetisnull (int *,int ,int ) ;
 int PQgetlength (int *,int ,int ) ;
 int PQgetvalue (int *,int ,int ) ;
 int PQntuples (int *) ;
 int PQresultErrorMessage (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int conn ;
 int memcpy (char*,int ,int) ;
 int pg_fatal (char*,char const*,...) ;
 int pg_log_debug (char*,char const*,int) ;
 char* pg_malloc (int) ;

char *
libpqGetFile(const char *filename, size_t *filesize)
{
 PGresult *res;
 char *result;
 int len;
 const char *paramValues[1];

 paramValues[0] = filename;
 res = PQexecParams(conn, "SELECT pg_read_binary_file($1)",
        1, ((void*)0), paramValues, ((void*)0), ((void*)0), 1);

 if (PQresultStatus(res) != PGRES_TUPLES_OK)
  pg_fatal("could not fetch remote file \"%s\": %s",
     filename, PQresultErrorMessage(res));


 if (PQntuples(res) != 1 || PQgetisnull(res, 0, 0))
  pg_fatal("unexpected result set while fetching remote file \"%s\"",
     filename);


 len = PQgetlength(res, 0, 0);
 result = pg_malloc(len + 1);
 memcpy(result, PQgetvalue(res, 0, 0), len);
 result[len] = '\0';

 PQclear(res);

 pg_log_debug("fetched file \"%s\", length %d", filename, len);

 if (filesize)
  *filesize = len;
 return result;
}
