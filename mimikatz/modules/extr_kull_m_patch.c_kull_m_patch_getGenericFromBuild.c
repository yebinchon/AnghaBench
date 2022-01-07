
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ MinBuildNumber; } ;
typedef size_t SIZE_T ;
typedef TYPE_1__* PKULL_M_PATCH_GENERIC ;
typedef scalar_t__ DWORD ;



PKULL_M_PATCH_GENERIC kull_m_patch_getGenericFromBuild(PKULL_M_PATCH_GENERIC generics, SIZE_T cbGenerics, DWORD BuildNumber)
{
 SIZE_T i;
 PKULL_M_PATCH_GENERIC current = ((void*)0);

 for(i = 0; i < cbGenerics; i++)
 {
  if(generics[i].MinBuildNumber <= BuildNumber)
   current = &generics[i];
  else break;
 }
 return current;
}
