
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_8__ {scalar_t__ address; int hMemory; int * member_1; int ** member_0; } ;
struct TYPE_7__ {int * Flink; } ;
typedef int * PVOID ;
typedef int PLUID ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef TYPE_2__* PKULL_M_MEMORY_ADDRESS ;
typedef scalar_t__ PBYTE ;
typedef int LUID ;
typedef TYPE_2__ KULL_M_MEMORY_ADDRESS ;


 int KULL_M_MEMORY_GLOBAL_OWN_HANDLE ;
 int LPTR ;
 int * LocalAlloc (int ,int) ;
 int LocalFree (int *) ;
 scalar_t__ SecEqualLuid (int ,int ) ;
 scalar_t__ kull_m_memory_copy (TYPE_2__*,TYPE_2__*,int) ;

PVOID kuhl_m_sekurlsa_utils_pFromLinkedListByLuid(PKULL_M_MEMORY_ADDRESS pSecurityStruct, ULONG LUIDoffset, PLUID luidToFind)
{
 PVOID resultat = ((void*)0), pStruct;
 KULL_M_MEMORY_ADDRESS data = {&pStruct, &KULL_M_MEMORY_GLOBAL_OWN_HANDLE}, aBuffer = {((void*)0), &KULL_M_MEMORY_GLOBAL_OWN_HANDLE};

 if(aBuffer.address = LocalAlloc(LPTR, LUIDoffset + sizeof(LUID)))
 {
  if(kull_m_memory_copy(&data, pSecurityStruct, sizeof(PVOID)))
  {
   data.address = pStruct;
   data.hMemory = pSecurityStruct->hMemory;

   while(data.address != pSecurityStruct->address)
   {
    if(kull_m_memory_copy(&aBuffer, &data, LUIDoffset + sizeof(LUID)))
    {
     if(SecEqualLuid(luidToFind, (PLUID) ((PBYTE)(aBuffer.address) + LUIDoffset)))
     {
      resultat = data.address;
      break;
     }
     data.address = ((PLIST_ENTRY) (aBuffer.address))->Flink;
    }
    else break;
   }
  }
  LocalFree(aBuffer.address);
 }
 return resultat;
}
