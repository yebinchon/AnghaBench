
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bDone; int list; } ;
typedef TYPE_1__ SortSubtask ;


 void* SQLITE_INT_TO_PTR (int) ;
 int assert (int) ;
 int vdbeSorterListToPMA (TYPE_1__*,int *) ;

__attribute__((used)) static void *vdbeSorterFlushThread(void *pCtx){
  SortSubtask *pTask = (SortSubtask*)pCtx;
  int rc;
  assert( pTask->bDone==0 );
  rc = vdbeSorterListToPMA(pTask, &pTask->list);
  pTask->bDone = 1;
  return SQLITE_INT_TO_PTR(rc);
}
