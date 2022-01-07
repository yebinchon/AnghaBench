
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int wchar_t ;
typedef size_t ULONG ;
struct TYPE_10__ {size_t fCapabilities; int Name; int wVersion; int wRPCID; int cbMaxToken; int Comment; } ;
struct TYPE_9__ {TYPE_3__* pvBuffer; int cbBuffer; int * member_2; int member_1; int member_0; } ;
struct TYPE_8__ {int member_1; TYPE_2__* member_2; int member_0; } ;
typedef TYPE_1__ SecBufferDesc ;
typedef TYPE_2__ SecBuffer ;
typedef scalar_t__ SECURITY_STATUS ;
typedef TYPE_3__* PSecPkgInfo ;
typedef int NTSTATUS ;
typedef int CtxtHandle ;
typedef int CredHandle ;


 size_t ARRAYSIZE (char**) ;
 scalar_t__ AcquireCredentialsHandle (int *,int ,int ,int *,int *,int *,int *,int *,int *) ;
 int DeleteSecurityContext (int *) ;
 scalar_t__ EnumerateSecurityPackages (size_t*,TYPE_3__**) ;
 int FreeContextBuffer (TYPE_3__*) ;
 int FreeCredentialHandle (int *) ;
 int ISC_REQ_ALLOCATE_MEMORY ;
 scalar_t__ InitializeSecurityContext (int *,int *,int *,int ,int ,int ,int *,int ,int *,TYPE_1__*,size_t*,int *) ;
 char** PACKAGES_FLAGS ;
 int PRINT_ERROR (char*,scalar_t__) ;
 int SECBUFFER_TOKEN ;
 int SECBUFFER_VERSION ;
 int SECPKG_CRED_OUTBOUND ;
 int SECURITY_NATIVE_DREP ;
 scalar_t__ SEC_E_INCOMPLETE_MESSAGE ;
 scalar_t__ SEC_E_OK ;
 scalar_t__ SEC_I_COMPLETE_AND_CONTINUE ;
 scalar_t__ SEC_I_COMPLETE_NEEDED ;
 scalar_t__ SEC_I_CONTINUE_NEEDED ;
 scalar_t__ SEC_I_INCOMPLETE_CREDENTIALS ;
 int STATUS_SUCCESS ;
 int kprintf (char*,...) ;
 int kull_m_string_wprintf_hex (TYPE_3__*,int ,int) ;

NTSTATUS kuhl_m_lsadump_packages(int argc, wchar_t * argv[])
{
 SECURITY_STATUS status;
 ULONG cPackages, i, j;
 PSecPkgInfo pPackageInfo;
 CredHandle hCred;
 CtxtHandle hCtx;
 SecBuffer OutBuff = {0, SECBUFFER_TOKEN, ((void*)0)};
 SecBufferDesc Output = {SECBUFFER_VERSION, 1, &OutBuff};
 ULONG ContextAttr;

 status = EnumerateSecurityPackages(&cPackages, &pPackageInfo);
 if(status == SEC_E_OK)
 {
  for(i = 0; i < cPackages; i++)
  {
   kprintf(L"Name        : %s\nDescription : %s\nCapabilities: %08x ( ", pPackageInfo[i].Name, pPackageInfo[i].Comment, pPackageInfo[i].fCapabilities);
   for(j = 0; j < sizeof(ULONG) * 8; j++)
    if((pPackageInfo[i].fCapabilities >> j) & 1)
     kprintf(L"%s ; ", (j < ARRAYSIZE(PACKAGES_FLAGS)) ? PACKAGES_FLAGS[j] : L"?");
   kprintf(L")\nMaxToken    : %u\nRPCID       : 0x%04x (%hu)\nVersion     : %hu\n", pPackageInfo[i].cbMaxToken, pPackageInfo[i].wRPCID, pPackageInfo[i].wRPCID, pPackageInfo[i].wVersion);

   if(argc)
   {
    status = AcquireCredentialsHandle(((void*)0), pPackageInfo[i].Name, SECPKG_CRED_OUTBOUND, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &hCred, ((void*)0));
    if(status == SEC_E_OK)
    {
     status = InitializeSecurityContext(&hCred, ((void*)0), argv[0], ISC_REQ_ALLOCATE_MEMORY, 0, SECURITY_NATIVE_DREP, ((void*)0), 0, &hCtx, &Output, &ContextAttr, ((void*)0));
     if((status == SEC_E_OK) || (status == SEC_I_COMPLETE_AND_CONTINUE) || (status == SEC_I_COMPLETE_NEEDED) || (status == SEC_I_CONTINUE_NEEDED) || (status == SEC_I_INCOMPLETE_CREDENTIALS) || (status == SEC_E_INCOMPLETE_MESSAGE))
     {
      kull_m_string_wprintf_hex(OutBuff.pvBuffer, OutBuff.cbBuffer, 1 | (16 << 16));
      kprintf(L"\n");
      if(OutBuff.pvBuffer)
       FreeContextBuffer(OutBuff.pvBuffer);
      DeleteSecurityContext(&hCtx);
     }
     else PRINT_ERROR(L"InitializeSecurityContext: 0x%08x\n", status);
     FreeCredentialHandle(&hCred);
    }
    else PRINT_ERROR(L"AcquireCredentialsHandle: 0x%08x\n", status);
   }
   kprintf(L"\n");
  }
  FreeContextBuffer(pPackageInfo);
 }
 else PRINT_ERROR(L"EnumerateSecurityPackages: 0x%08x\n", status);
 return STATUS_SUCCESS;
}
