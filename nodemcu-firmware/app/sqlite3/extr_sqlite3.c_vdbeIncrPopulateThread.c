
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pTask; } ;
struct TYPE_4__ {int bDone; } ;
typedef TYPE_2__ IncrMerger ;


 void* SQLITE_INT_TO_PTR (int ) ;
 int vdbeIncrPopulate (TYPE_2__*) ;

__attribute__((used)) static void *vdbeIncrPopulateThread(void *pCtx){
  IncrMerger *pIncr = (IncrMerger*)pCtx;
  void *pRet = SQLITE_INT_TO_PTR( vdbeIncrPopulate(pIncr) );
  pIncr->pTask->bDone = 1;
  return pRet;
}
