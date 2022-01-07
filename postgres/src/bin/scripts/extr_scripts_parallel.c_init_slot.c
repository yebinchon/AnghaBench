
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int isFree; int * connection; } ;
typedef TYPE_1__ ParallelSlot ;
typedef int PGconn ;



__attribute__((used)) static void
init_slot(ParallelSlot *slot, PGconn *conn)
{
 slot->connection = conn;

 slot->isFree = 1;
}
