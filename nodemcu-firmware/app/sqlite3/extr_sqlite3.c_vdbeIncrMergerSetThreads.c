
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int bUseThread; scalar_t__ mxSz; TYPE_2__* pTask; } ;
struct TYPE_5__ {int iEof; } ;
struct TYPE_6__ {TYPE_1__ file2; } ;
typedef TYPE_3__ IncrMerger ;



__attribute__((used)) static void vdbeIncrMergerSetThreads(IncrMerger *pIncr){
  pIncr->bUseThread = 1;
  pIncr->pTask->file2.iEof -= pIncr->mxSz;
}
