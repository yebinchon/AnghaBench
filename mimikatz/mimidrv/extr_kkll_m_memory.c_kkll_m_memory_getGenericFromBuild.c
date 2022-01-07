
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ OsIndex; } ;
typedef size_t SIZE_T ;
typedef TYPE_1__* PKKLL_M_MEMORY_GENERIC ;


 scalar_t__ KiwiOsIndex ;

PKKLL_M_MEMORY_GENERIC kkll_m_memory_getGenericFromBuild(PKKLL_M_MEMORY_GENERIC generics, SIZE_T cbGenerics)
{
 SIZE_T i;
 for(i = 0; i < cbGenerics; i++)
  if(generics[i].OsIndex == KiwiOsIndex)
   return generics + i;
 return ((void*)0);
}
