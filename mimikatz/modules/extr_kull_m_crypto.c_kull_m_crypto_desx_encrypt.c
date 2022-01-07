
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PVOID ;
typedef int * PULONGLONG ;
typedef scalar_t__ PBYTE ;
typedef scalar_t__ LPCVOID ;
typedef int HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int CALG_DES ;
 int CryptDestroyKey (int ) ;
 int CryptEncrypt (int ,int ,int ,int ,scalar_t__,int*,int) ;
 int FALSE ;
 int RtlCopyMemory (scalar_t__,scalar_t__,int) ;
 scalar_t__ kull_m_crypto_hkey (int ,int ,scalar_t__,int,int ,int *,int *) ;

BOOL kull_m_crypto_desx_encrypt(HCRYPTPROV hProv, LPCVOID key, LPCVOID block, PVOID encrypted)
{
 BOOL status = FALSE;
 HCRYPTKEY hKey;
 DWORD dwLen = 8;
 RtlCopyMemory(encrypted, block, 8);
 if(kull_m_crypto_hkey(hProv, CALG_DES, key, 8, 0, &hKey, ((void*)0)))
 {
  *(PULONGLONG) encrypted ^= *(PULONGLONG) ((PBYTE) key + 8);
  if(status = CryptEncrypt(hKey, 0, FALSE, 0, (PBYTE) encrypted, &dwLen, dwLen))
   *(PULONGLONG) encrypted ^= *(PULONGLONG) ((PBYTE) key + 16);
  CryptDestroyKey(hKey);
 }
 return status;
}
