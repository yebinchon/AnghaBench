
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* WindowObject ;
struct TYPE_6__ {void* localmem; TYPE_1__* winstate; } ;
struct TYPE_5__ {int partcontext; } ;
typedef int Size ;


 int Assert (int ) ;
 void* MemoryContextAllocZero (int ,int ) ;
 int WindowObjectIsValid (TYPE_2__*) ;

void *
WinGetPartitionLocalMemory(WindowObject winobj, Size sz)
{
 Assert(WindowObjectIsValid(winobj));
 if (winobj->localmem == ((void*)0))
  winobj->localmem =
   MemoryContextAllocZero(winobj->winstate->partcontext, sz);
 return winobj->localmem;
}
