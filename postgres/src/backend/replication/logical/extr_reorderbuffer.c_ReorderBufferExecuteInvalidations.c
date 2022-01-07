
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ninvalidations; int * invalidations; } ;
typedef TYPE_1__ ReorderBufferTXN ;
typedef int ReorderBuffer ;


 int LocalExecuteInvalidationMessage (int *) ;

__attribute__((used)) static void
ReorderBufferExecuteInvalidations(ReorderBuffer *rb, ReorderBufferTXN *txn)
{
 int i;

 for (i = 0; i < txn->ninvalidations; i++)
  LocalExecuteInvalidationMessage(&txn->invalidations[i]);
}
