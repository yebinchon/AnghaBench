
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* WindowStatePerFunc ;
struct TYPE_9__ {int numfuncs; scalar_t__ partcontext; scalar_t__ aggcontext; int numaggs; int partition_spooled; int * buffer; TYPE_2__* peragg; TYPE_3__* perfunc; } ;
typedef TYPE_4__ WindowAggState ;
struct TYPE_8__ {TYPE_1__* winobj; } ;
struct TYPE_7__ {scalar_t__ aggcontext; } ;
struct TYPE_6__ {int * localmem; } ;


 int MemoryContextResetAndDeleteChildren (scalar_t__) ;
 int tuplestore_end (int *) ;

__attribute__((used)) static void
release_partition(WindowAggState *winstate)
{
 int i;

 for (i = 0; i < winstate->numfuncs; i++)
 {
  WindowStatePerFunc perfuncstate = &(winstate->perfunc[i]);


  if (perfuncstate->winobj)
   perfuncstate->winobj->localmem = ((void*)0);
 }







 MemoryContextResetAndDeleteChildren(winstate->partcontext);
 MemoryContextResetAndDeleteChildren(winstate->aggcontext);
 for (i = 0; i < winstate->numaggs; i++)
 {
  if (winstate->peragg[i].aggcontext != winstate->aggcontext)
   MemoryContextResetAndDeleteChildren(winstate->peragg[i].aggcontext);
 }

 if (winstate->buffer)
  tuplestore_end(winstate->buffer);
 winstate->buffer = ((void*)0);
 winstate->partition_spooled = 0;
}
