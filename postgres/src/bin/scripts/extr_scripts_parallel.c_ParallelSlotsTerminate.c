
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * connection; } ;
typedef TYPE_1__ ParallelSlot ;
typedef int PGconn ;


 int disconnectDatabase (int *) ;

void
ParallelSlotsTerminate(ParallelSlot *slots, int numslots)
{
 int i;

 for (i = 0; i < numslots; i++)
 {
  PGconn *conn = slots[i].connection;

  if (conn == ((void*)0))
   continue;

  disconnectDatabase(conn);
 }
}
