
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* pIncr; } ;
struct TYPE_6__ {TYPE_1__* pTask; } ;
struct TYPE_5__ {int bDone; } ;
typedef TYPE_3__ PmaReader ;


 int INCRINIT_TASK ;
 void* SQLITE_INT_TO_PTR (int ) ;
 int vdbePmaReaderIncrMergeInit (TYPE_3__*,int ) ;

__attribute__((used)) static void *vdbePmaReaderBgIncrInit(void *pCtx){
  PmaReader *pReader = (PmaReader*)pCtx;
  void *pRet = SQLITE_INT_TO_PTR(
                  vdbePmaReaderIncrMergeInit(pReader,INCRINIT_TASK)
               );
  pReader->pIncr->pTask->bDone = 1;
  return pRet;
}
