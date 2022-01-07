
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 scalar_t__ pqFlush (int *) ;
 scalar_t__ pqIsnonblocking (int *) ;
 scalar_t__ pqReadData (int *) ;

int
PQconsumeInput(PGconn *conn)
{
 if (!conn)
  return 0;






 if (pqIsnonblocking(conn))
 {
  if (pqFlush(conn) < 0)
   return 0;
 }







 if (pqReadData(conn) < 0)
  return 0;


 return 1;
}
