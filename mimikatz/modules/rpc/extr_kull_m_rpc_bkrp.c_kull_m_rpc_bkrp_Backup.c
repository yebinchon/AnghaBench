
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int BACKUPKEY_BACKUP_GUID ;
 int kull_m_rpc_bkrp_generic (int ,int *,int ,int ,int *,int *) ;

BOOL kull_m_rpc_bkrp_Backup(LPCWSTR NetworkAddr, PVOID DataIn, DWORD dwDataIn, PVOID *pDataOut, DWORD *pdwDataOut)
{
 return kull_m_rpc_bkrp_generic(NetworkAddr, &BACKUPKEY_BACKUP_GUID, DataIn, dwDataIn, pDataOut, pdwDataOut);
}
