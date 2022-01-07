
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 int closePGconn (int *) ;
 int freePGconn (int *) ;

void
PQfinish(PGconn *conn)
{
 if (conn)
 {
  closePGconn(conn);
  freePGconn(conn);
 }
}
