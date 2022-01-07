
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PBYTE ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CryptDecrypt (int ,int ,int ,int ,int ,int*) ;
 scalar_t__ CryptEncrypt (int ,int ,int ,int ,int ,int*,int) ;
 int FALSE ;

BOOL kull_m_crypto_aesBlockEncryptDecrypt(HCRYPTKEY hKey, PBYTE data, DWORD nbBlock, BOOL encrypt)
{
 nbBlock *= 16;
 return (encrypt ? CryptEncrypt(hKey, 0, FALSE, 0, data, &nbBlock, nbBlock) : CryptDecrypt(hKey, 0, FALSE, 0, data, &nbBlock));
}
