
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pThread; scalar_t__ bDone; } ;
typedef TYPE_1__ SortSubtask ;


 int assert (int) ;
 int sqlite3ThreadCreate (scalar_t__*,void* (*) (void*),void*) ;

__attribute__((used)) static int vdbeSorterCreateThread(
  SortSubtask *pTask,
  void *(*xTask)(void*),
  void *pIn
){
  assert( pTask->pThread==0 && pTask->bDone==0 );
  return sqlite3ThreadCreate(&pTask->pThread, xTask, pIn);
}
