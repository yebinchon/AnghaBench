
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ mxSz; TYPE_3__* pTask; int * pMerger; } ;
struct TYPE_8__ {int iEof; } ;
struct TYPE_9__ {TYPE_2__ file2; TYPE_1__* pSorter; } ;
struct TYPE_7__ {int mxPmaSize; scalar_t__ mxKeysize; } ;
typedef TYPE_3__ SortSubtask ;
typedef int MergeEngine ;
typedef TYPE_4__ IncrMerger ;


 scalar_t__ MAX (scalar_t__,int) ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 scalar_t__ sqlite3FaultSim (int) ;
 scalar_t__ sqlite3MallocZero (int) ;
 int vdbeMergeEngineFree (int *) ;

__attribute__((used)) static int vdbeIncrMergerNew(
  SortSubtask *pTask,
  MergeEngine *pMerger,
  IncrMerger **ppOut
){
  int rc = SQLITE_OK;
  IncrMerger *pIncr = *ppOut = (IncrMerger*)
       (sqlite3FaultSim(100) ? 0 : sqlite3MallocZero(sizeof(*pIncr)));
  if( pIncr ){
    pIncr->pMerger = pMerger;
    pIncr->pTask = pTask;
    pIncr->mxSz = MAX(pTask->pSorter->mxKeysize+9,pTask->pSorter->mxPmaSize/2);
    pTask->file2.iEof += pIncr->mxSz;
  }else{
    vdbeMergeEngineFree(pMerger);
    rc = SQLITE_NOMEM_BKPT;
  }
  return rc;
}
