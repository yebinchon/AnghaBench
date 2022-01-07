
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pMerger; TYPE_1__* aFile; int pTask; scalar_t__ bUseThread; } ;
struct TYPE_5__ {scalar_t__ pFd; } ;
typedef TYPE_2__ IncrMerger ;


 int sqlite3OsCloseFree (scalar_t__) ;
 int sqlite3_free (TYPE_2__*) ;
 int vdbeMergeEngineFree (int ) ;
 int vdbeSorterJoinThread (int ) ;

__attribute__((used)) static void vdbeIncrFree(IncrMerger *pIncr){
  if( pIncr ){







    vdbeMergeEngineFree(pIncr->pMerger);
    sqlite3_free(pIncr);
  }
}
