
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int _u32 ;
typedef size_t _i8 ;
typedef int * _SlSpawnEntryFunc_t ;
struct TYPE_3__ {int * pEntry; void* pValue; } ;
typedef TYPE_1__ _SlNonOsSpawnEntry_t ;
typedef int _SlNonOsRetVal_t ;
struct TYPE_4__ {TYPE_1__* SpawnEntries; } ;


 size_t NONOS_MAX_SPAWN_ENTRIES ;
 int NONOS_RET_OK ;
 TYPE_2__ g__SlNonOsCB ;

_SlNonOsRetVal_t _SlNonOsSpawn(_SlSpawnEntryFunc_t pEntry , void* pValue , _u32 flags)
{
  _i8 i = 0;


 for (i=0 ; i<NONOS_MAX_SPAWN_ENTRIES ; i++)

 {
  _SlNonOsSpawnEntry_t* pE = &g__SlNonOsCB.SpawnEntries[i];

  if (((void*)0) == pE->pEntry)
  {
   pE->pValue = pValue;
   pE->pEntry = pEntry;

   break;

  }
 }


        return NONOS_RET_OK;
}
