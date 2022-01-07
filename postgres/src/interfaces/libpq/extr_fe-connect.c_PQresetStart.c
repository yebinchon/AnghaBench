
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 int closePGconn (int *) ;
 int connectDBStart (int *) ;

int
PQresetStart(PGconn *conn)
{
 if (conn)
 {
  closePGconn(conn);

  return connectDBStart(conn);
 }

 return 0;
}
