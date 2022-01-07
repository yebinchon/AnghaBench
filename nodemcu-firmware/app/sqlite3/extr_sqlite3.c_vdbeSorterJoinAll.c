
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nTask; int * aTask; } ;
typedef TYPE_1__ VdbeSorter ;
typedef int SortSubtask ;


 int SQLITE_OK ;
 int vdbeSorterJoinThread (int *) ;

__attribute__((used)) static int vdbeSorterJoinAll(VdbeSorter *pSorter, int rcin){
  int rc = rcin;
  int i;
  for(i=pSorter->nTask-1; i>=0; i--){
    SortSubtask *pTask = &pSorter->aTask[i];
    int rc2 = vdbeSorterJoinThread(pTask);
    if( rc==SQLITE_OK ) rc = rc2;
  }
  return rc;
}
