
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PBYTE ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int CryptDestroyKey (int ) ;
 scalar_t__ CryptDuplicateKey (int ,int *,int ,int *) ;
 scalar_t__ CryptSetKeyParam (int ,int ,int *,int ) ;
 scalar_t__ FALSE ;
 int KP_IV ;
 int RtlCopyMemory (int *,int *,int) ;
 int RtlZeroMemory (int *,int) ;
 scalar_t__ kull_m_crypto_aesBlockEncryptDecrypt (int ,int *,int,scalar_t__) ;

BOOL kull_m_crypto_aesCTSDecrypt(HCRYPTKEY hKey, PBYTE data, DWORD szData, PBYTE pbIV)
{
 BOOL status = FALSE;
 DWORD nbBlock, lastLen, i;
 BYTE buffer[32], *ptr;
 HCRYPTKEY hKeyNoIV;

 if(szData > 16)
 {
  if(CryptDuplicateKey(hKey, ((void*)0), 0, &hKeyNoIV))
  {
   if(CryptSetKeyParam(hKey, KP_IV, pbIV, 0))
   {
    nbBlock = (szData + 15) >> 4;
    lastLen = (szData & 0xf) ? (szData & 0xf) : 16;
    if (nbBlock <= 2 || kull_m_crypto_aesBlockEncryptDecrypt(hKey, data, nbBlock - 2, FALSE))
    {
     ptr = &data[16 * (nbBlock - 2)];
     RtlCopyMemory(buffer, ptr, lastLen + 16);
     RtlZeroMemory(&buffer[lastLen + 16], 16 - lastLen);
     if(kull_m_crypto_aesBlockEncryptDecrypt(hKeyNoIV, buffer, 1, FALSE))
     {
      for(i = 0; i < 16; i++)
       buffer[i] ^= buffer[i + 16];
      RtlCopyMemory(&buffer[lastLen + 16], &buffer[lastLen], 16 - lastLen);
      if(status = kull_m_crypto_aesBlockEncryptDecrypt(hKey, buffer + 16, 1, FALSE))
      {
       RtlCopyMemory(ptr, buffer + 16, 16);
       RtlCopyMemory(&data[16 * nbBlock - 16], buffer, lastLen);
      }
     }
    }
   }
   CryptDestroyKey(hKeyNoIV);
  }
 }
 else if(szData == 16)
  status = kull_m_crypto_aesBlockEncryptDecrypt(hKey, data, 1, FALSE);

 return status;
}
