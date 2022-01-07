
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * queryDesc; } ;
typedef TYPE_1__* CopyState ;


 int EndCopy (TYPE_1__*) ;
 int ExecutorEnd (int *) ;
 int ExecutorFinish (int *) ;
 int FreeQueryDesc (int *) ;
 int PopActiveSnapshot () ;

__attribute__((used)) static void
EndCopyTo(CopyState cstate)
{
 if (cstate->queryDesc != ((void*)0))
 {

  ExecutorFinish(cstate->queryDesc);
  ExecutorEnd(cstate->queryDesc);
  FreeQueryDesc(cstate->queryDesc);
  PopActiveSnapshot();
 }


 EndCopy(cstate);
}
