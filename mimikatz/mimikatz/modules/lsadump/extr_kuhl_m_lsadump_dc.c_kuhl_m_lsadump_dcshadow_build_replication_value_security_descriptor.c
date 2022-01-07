
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int * pVal; int valLen; } ;
typedef int PWSTR ;
typedef int * PSECURITY_DESCRIPTOR ;
typedef int * PBYTE ;
typedef int BOOL ;
typedef TYPE_1__ ATTRVAL ;


 scalar_t__ ConvertStringSecurityDescriptorToSecurityDescriptor (int ,int ,int **,int *) ;
 int LocalFree (int *) ;
 scalar_t__ MIDL_user_allocate (int ) ;
 int PRINT_ERROR_AUTO (char*) ;
 int RtlCopyMemory (int *,int *,int ) ;
 int SDDL_REVISION_1 ;

BOOL kuhl_m_lsadump_dcshadow_build_replication_value_security_descriptor(ATTRVAL* pVal, PWSTR szValue)
{
 ULONG len = 0;
 PSECURITY_DESCRIPTOR sddl = ((void*)0);

 if(ConvertStringSecurityDescriptorToSecurityDescriptor(szValue, SDDL_REVISION_1, &sddl, &len))
 {
  pVal->valLen = len;
  pVal->pVal = (PBYTE) MIDL_user_allocate(pVal->valLen);
  if(pVal->pVal)
   RtlCopyMemory(pVal->pVal, sddl, pVal->valLen);
  LocalFree(sddl);
 }
 else PRINT_ERROR_AUTO(L"ConvertStringSecurityDescriptorToSecurityDescriptor");
 return pVal->pVal != ((void*)0);
}
