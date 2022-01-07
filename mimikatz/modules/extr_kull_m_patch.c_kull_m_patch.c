
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_21__ {int Protect; } ;
struct TYPE_20__ {scalar_t__ address; int * member_1; int * member_0; } ;
struct TYPE_17__ {int * hMemory; } ;
struct TYPE_18__ {TYPE_1__ kull_m_memoryAdress; } ;
struct TYPE_19__ {scalar_t__ result; TYPE_2__ kull_m_memoryRange; } ;
typedef int SIZE_T ;
typedef int (* PKULL_M_PATCH_CALLBACK ) (int,int **) ;
typedef TYPE_3__* PKULL_M_MEMORY_SEARCH ;
typedef TYPE_4__* PKULL_M_MEMORY_ADDRESS ;
typedef int NTSTATUS ;
typedef TYPE_5__ MEMORY_BASIC_INFORMATION ;
typedef scalar_t__ LPBYTE ;
typedef scalar_t__ LONG ;
typedef TYPE_4__ KULL_M_MEMORY_ADDRESS ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int KULL_M_MEMORY_GLOBAL_OWN_HANDLE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int ) ;
 int LocalFree (scalar_t__) ;
 int PAGE_EXECUTE_READWRITE ;
 int PAGE_READWRITE ;
 int TRUE ;
 int kull_m_memory_copy (TYPE_4__*,TYPE_4__*,int ) ;
 int kull_m_memory_protect (TYPE_4__*,int ,int,int*) ;
 scalar_t__ kull_m_memory_query (TYPE_4__*,TYPE_5__*) ;
 scalar_t__ kull_m_memory_search (TYPE_4__*,int ,TYPE_3__*,int) ;

BOOL kull_m_patch(PKULL_M_MEMORY_SEARCH sMemory, PKULL_M_MEMORY_ADDRESS pPattern, SIZE_T szPattern, PKULL_M_MEMORY_ADDRESS pPatch, SIZE_T szPatch, LONG offsetOfPatch, PKULL_M_PATCH_CALLBACK pCallBackBeforeRestore, int argc, wchar_t * args[], NTSTATUS * pRetCallBack)
{
 BOOL result = FALSE, resultBackup = !pCallBackBeforeRestore, resultProtect = TRUE;
 KULL_M_MEMORY_ADDRESS destination = {((void*)0), sMemory->kull_m_memoryRange.kull_m_memoryAdress.hMemory};
 KULL_M_MEMORY_ADDRESS backup = {((void*)0), &KULL_M_MEMORY_GLOBAL_OWN_HANDLE};
 MEMORY_BASIC_INFORMATION readInfos;
 NTSTATUS status;
 DWORD flags, oldProtect = 0, tempProtect = 0;

 if(kull_m_memory_search(pPattern, szPattern, sMemory, TRUE))
 {
  destination.address = (LPBYTE) sMemory->result + offsetOfPatch;

  if(!resultBackup)
   if(backup.address = LocalAlloc(LPTR, szPatch))
    resultBackup = kull_m_memory_copy(&backup, &destination, szPatch);

  if(resultBackup)
  {
   if(kull_m_memory_query(&destination, &readInfos))
   {
    flags = readInfos.Protect & ~0xff;
    if((readInfos.Protect & 0x0f) && ((readInfos.Protect & 0x0f) < PAGE_READWRITE))
     tempProtect = PAGE_READWRITE;
    else if((readInfos.Protect & 0xf0) && ((readInfos.Protect & 0xf0) < PAGE_EXECUTE_READWRITE))
     tempProtect = PAGE_EXECUTE_READWRITE;

    if(tempProtect)
     resultProtect = kull_m_memory_protect(&destination, szPatch, tempProtect | flags, &oldProtect);

    if(resultProtect)
    {
     if(result = kull_m_memory_copy(&destination, pPatch, szPatch))
     {
      if(pCallBackBeforeRestore)
      {
       status = pCallBackBeforeRestore(argc, args);
       if(pRetCallBack)
        *pRetCallBack = status;
       result = kull_m_memory_copy(&destination, &backup, szPatch);
      }
     }
     if(oldProtect)
      kull_m_memory_protect(&destination, szPatch, oldProtect, ((void*)0));
    }
   }
   if(backup.address)
    LocalFree(backup.address);
  }
 }
 return result;
}
