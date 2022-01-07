
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwDomainKeyLen; scalar_t__ dwCredHistLen; scalar_t__ dwBackupKeyLen; scalar_t__ dwMasterKeyLen; } ;
typedef int * PVOID ;
typedef TYPE_1__* PKULL_M_DPAPI_MASTERKEYS ;
typedef scalar_t__ PBYTE ;
typedef int LPCWSTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int KULL_M_DPAPI_MASTERKEYS ;
 int LPTR ;
 int * LocalAlloc (int ,scalar_t__) ;
 int LocalFree (scalar_t__) ;
 int MasterKey ;
 int RtlCopyMemory (int *,scalar_t__,scalar_t__) ;
 int kull_m_rpc_bkrp_Restore (int ,scalar_t__,scalar_t__,int **,scalar_t__*) ;

BOOL kull_m_dpapi_unprotect_domainkey_with_rpc(PKULL_M_DPAPI_MASTERKEYS masterkeys, PVOID rawMasterkeys, LPCWSTR server, PVOID *output, DWORD *outputLen)
{
 BOOL status = FALSE;
 PBYTE out;
 DWORD dwOut;
 *output = ((void*)0);
 *outputLen = 0;
 if(status = kull_m_rpc_bkrp_Restore(server, (PBYTE) rawMasterkeys + FIELD_OFFSET(KULL_M_DPAPI_MASTERKEYS, MasterKey) + masterkeys->dwMasterKeyLen + masterkeys->dwBackupKeyLen + masterkeys->dwCredHistLen, (DWORD) masterkeys->dwDomainKeyLen, (PVOID *) &out, &dwOut))
 {
  *outputLen = dwOut - sizeof(DWORD);
  if(*output = LocalAlloc(LPTR, *outputLen))
   RtlCopyMemory(*output, out + sizeof(DWORD), dwOut - sizeof(DWORD));
  LocalFree(out);
 }
 return status;
}
