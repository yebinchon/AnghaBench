
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int PGconn ;


 int pqSocketCheck (int *,int ,int,int ) ;

int
pqWriteReady(PGconn *conn)
{
 return pqSocketCheck(conn, 0, 1, (time_t) 0);
}
