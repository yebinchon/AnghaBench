
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t _i8 ;
typedef int (* _SlSpawnEntryFunc_t ) (int ) ;
struct TYPE_4__ {int * pValue; int (* pEntry ) (int ) ;} ;
typedef TYPE_1__ _SlNonOsSpawnEntry_t ;
typedef int _SlNonOsRetVal_t ;
struct TYPE_6__ {TYPE_1__* SpawnEntries; } ;
struct TYPE_5__ {scalar_t__ RxDoneCnt; } ;


 size_t NONOS_MAX_SPAWN_ENTRIES ;
 int NONOS_RET_OK ;
 scalar_t__ RxIrqCnt ;
 TYPE_3__ g__SlNonOsCB ;
 TYPE_2__* g_pCB ;

_SlNonOsRetVal_t _SlNonOsMainLoopTask(void)
{
 _i8 i=0;



 for (i=0 ; i<NONOS_MAX_SPAWN_ENTRIES ; i++)

 {
  _SlNonOsSpawnEntry_t* pE = &g__SlNonOsCB.SpawnEntries[i];
  _SlSpawnEntryFunc_t pF = pE->pEntry;

  if (((void*)0) != pF)
  {
            if(RxIrqCnt != (g_pCB)->RxDoneCnt)
            {
                pF(0);
            }

   pE->pEntry = ((void*)0);
   pE->pValue = ((void*)0);
  }
 }

        return NONOS_RET_OK;
}
