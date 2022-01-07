
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int PGconn ;


 int pqSocketCheck (int *,int,int ,int ) ;

int
pqReadReady(PGconn *conn)
{
 return pqSocketCheck(conn, 1, 0, (time_t) 0);
}
