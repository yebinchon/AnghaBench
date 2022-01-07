
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef int ULONG ;
struct TYPE_2__ {scalar_t__ Flink; } ;
typedef scalar_t__* PVOID ;
typedef int PLUID ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef scalar_t__ PBYTE ;
typedef int LUID ;


 int LPTR ;
 scalar_t__* LocalAlloc (int ,int) ;
 int LocalFree (scalar_t__*) ;
 scalar_t__ ReadMemory (scalar_t__,scalar_t__*,int,int *) ;
 scalar_t__ SecEqualLuid (int ,int ) ;

ULONG_PTR kuhl_m_sekurlsa_utils_pFromLinkedListByLuid(ULONG_PTR pSecurityStruct, ULONG LUIDoffset, PLUID luidToFind)
{
 PVOID buffer;
 ULONG_PTR resultat = 0, pStruct = 0;

 if(buffer = LocalAlloc(LPTR, LUIDoffset + sizeof(LUID)))
 {
  if(ReadMemory(pSecurityStruct, &pStruct, sizeof(PVOID), ((void*)0)))
  {
   while(pStruct != pSecurityStruct)
   {
    if(ReadMemory(pStruct, buffer, LUIDoffset + sizeof(LUID), ((void*)0)))
    {
     if(SecEqualLuid(luidToFind, (PLUID) ((PBYTE) buffer + LUIDoffset)))
     {
      resultat = pStruct;
      break;
     }
     pStruct = (ULONG_PTR) ((PLIST_ENTRY) buffer)->Flink;
    }
    else break;
   }
  }
  LocalFree(buffer);
 }
 return resultat;
}
