
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC_BINDING_HANDLE ;
typedef int * LPWSTR ;
typedef int * LPCWSTR ;
typedef int BOOL ;


 int DS_WRITABLE_REQUIRED ;
 int FALSE ;
 int LocalFree (int *) ;
 int MIMIKATZ_NT_MAJOR_VERSION ;
 int RPC_C_AUTHN_GSS_KERBEROS ;
 int RPC_C_AUTHN_GSS_NEGOTIATE ;
 int RPC_C_IMP_LEVEL_IMPERSONATE ;
 int TRUE ;
 scalar_t__ kull_m_net_getDC (int *,int ,int **) ;
 int kull_m_rpc_createBinding (int *,char*,int *,char*,char*,int ,int ,int *,int ,int *,int *) ;

BOOL kull_m_rpc_bkrp_createBinding(LPCWSTR NetworkAddr, RPC_BINDING_HANDLE *hBinding)
{
 BOOL status = FALSE;
 LPWSTR szTmpDc = ((void*)0);
 if(!NetworkAddr)
  if(kull_m_net_getDC(((void*)0), DS_WRITABLE_REQUIRED, &szTmpDc))
   NetworkAddr = szTmpDc;
 if(NetworkAddr)
  status = kull_m_rpc_createBinding(((void*)0), L"ncacn_np", NetworkAddr, L"\\pipe\\protected_storage", L"ProtectedStorage", TRUE, (MIMIKATZ_NT_MAJOR_VERSION < 6) ? RPC_C_AUTHN_GSS_KERBEROS : RPC_C_AUTHN_GSS_NEGOTIATE, ((void*)0), RPC_C_IMP_LEVEL_IMPERSONATE, hBinding, ((void*)0));
 if(szTmpDc)
  LocalFree(szTmpDc);
 return status;
}
