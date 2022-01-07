
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_22__ {int nTask; scalar_t__ bUseThreads; TYPE_5__* pMerger; TYPE_3__* aTask; TYPE_4__* pReader; } ;
typedef TYPE_2__ VdbeSorter ;
struct TYPE_26__ {scalar_t__ bUseThread; TYPE_3__* pTask; } ;
struct TYPE_25__ {TYPE_4__* aReadr; } ;
struct TYPE_24__ {TYPE_6__* pIncr; } ;
struct TYPE_23__ {int xCompare; TYPE_1__* pSorter; } ;
struct TYPE_21__ {int * db; } ;
typedef int SorterCompare ;
typedef TYPE_3__ SortSubtask ;
typedef TYPE_4__ PmaReader ;
typedef TYPE_5__ MergeEngine ;
typedef TYPE_6__ IncrMerger ;


 int INCRINIT_NORMAL ;
 int INCRINIT_ROOT ;
 int INCRINIT_TASK ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ sqlite3DbMallocZero (int *,int) ;
 int vdbeIncrMergerNew (TYPE_3__*,TYPE_5__*,TYPE_6__**) ;
 int vdbeIncrMergerSetThreads (TYPE_6__*) ;
 int vdbeMergeEngineFree (TYPE_5__*) ;
 int vdbeMergeEngineInit (TYPE_3__*,TYPE_5__*,int ) ;
 int vdbePmaReaderIncrInit (TYPE_4__*,int ) ;
 int vdbePmaReaderIncrMergeInit (TYPE_4__*,int ) ;
 int vdbeSortAllocUnpacked (TYPE_3__*) ;
 int vdbeSorterGetCompare (TYPE_2__*) ;
 int vdbeSorterMergeTreeBuild (TYPE_2__*,TYPE_5__**) ;

__attribute__((used)) static int vdbeSorterSetupMerge(VdbeSorter *pSorter){
  int rc;
  SortSubtask *pTask0 = &pSorter->aTask[0];
  MergeEngine *pMain = 0;
  rc = vdbeSorterMergeTreeBuild(pSorter, &pMain);
  if( rc==SQLITE_OK ){
    {
      rc = vdbeMergeEngineInit(pTask0, pMain, INCRINIT_NORMAL);
      pSorter->pMerger = pMain;
      pMain = 0;
    }
  }

  if( rc!=SQLITE_OK ){
    vdbeMergeEngineFree(pMain);
  }
  return rc;
}
