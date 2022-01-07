
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgsocket ;
typedef int PGconn ;


 int CopyStreamPoll (int *,long,int ) ;
 scalar_t__ PQconsumeInput (int *) ;
 int PQerrorMessage (int *) ;
 int PQfreemem (char*) ;
 int PQgetCopyData (int *,char**,int) ;
 int pg_log_error (char*,int ) ;

__attribute__((used)) static int
CopyStreamReceive(PGconn *conn, long timeout, pgsocket stop_socket,
      char **buffer)
{
 char *copybuf = ((void*)0);
 int rawlen;

 if (*buffer != ((void*)0))
  PQfreemem(*buffer);
 *buffer = ((void*)0);


 rawlen = PQgetCopyData(conn, &copybuf, 1);
 if (rawlen == 0)
 {
  int ret;






  ret = CopyStreamPoll(conn, timeout, stop_socket);
  if (ret <= 0)
   return ret;


  if (PQconsumeInput(conn) == 0)
  {
   pg_log_error("could not receive data from WAL stream: %s",
       PQerrorMessage(conn));
   return -1;
  }


  rawlen = PQgetCopyData(conn, &copybuf, 1);
  if (rawlen == 0)
   return 0;
 }
 if (rawlen == -1)
  return -2;
 if (rawlen == -2)
 {
  pg_log_error("could not read COPY data: %s", PQerrorMessage(conn));
  return -1;
 }


 *buffer = copybuf;
 return rawlen;
}
