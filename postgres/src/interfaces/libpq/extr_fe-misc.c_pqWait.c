
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int PGconn ;


 int pqWaitTimed (int,int,int *,int ) ;

int
pqWait(int forRead, int forWrite, PGconn *conn)
{
 return pqWaitTimed(forRead, forWrite, conn, (time_t) -1);
}
