
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 char* PG_VERSION ;
 int PG_VERSION_NUM ;
 char* PQparameterStatus (int *,char*) ;
 int PQserverVersion (int *) ;
 int pg_log_error (char*,char const*,char*) ;

bool
CheckServerVersionForStreaming(PGconn *conn)
{
 int minServerMajor,
    maxServerMajor;
 int serverMajor;







 minServerMajor = 903;
 maxServerMajor = PG_VERSION_NUM / 100;
 serverMajor = PQserverVersion(conn) / 100;
 if (serverMajor < minServerMajor)
 {
  const char *serverver = PQparameterStatus(conn, "server_version");

  pg_log_error("incompatible server version %s; client does not support streaming from server versions older than %s",
      serverver ? serverver : "'unknown'",
      "9.3");
  return 0;
 }
 else if (serverMajor > maxServerMajor)
 {
  const char *serverver = PQparameterStatus(conn, "server_version");

  pg_log_error("incompatible server version %s; client does not support streaming from server versions newer than %s",
      serverver ? serverver : "'unknown'",
      PG_VERSION);
  return 0;
 }
 return 1;
}
