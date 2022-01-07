
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef char BYTE ;
typedef int BOOL ;


 int BACKUPKEY_RETRIEVE_BACKUP_KEY_GUID ;
 int kull_m_rpc_bkrp_generic (int ,int *,char*,int ,int *,int *) ;

BOOL kull_m_rpc_bkrp_BackupKey(LPCWSTR NetworkAddr, PVOID *pDataOut, DWORD *pdwDataOut)
{
 BYTE dataIn = 'k';
 return kull_m_rpc_bkrp_generic(NetworkAddr, &BACKUPKEY_RETRIEVE_BACKUP_KEY_GUID, &dataIn, 0, pDataOut, pdwDataOut);
}
