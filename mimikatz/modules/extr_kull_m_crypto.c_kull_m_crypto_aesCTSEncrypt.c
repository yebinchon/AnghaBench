
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PBYTE ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ CryptSetKeyParam (int ,int ,int *,int ) ;
 scalar_t__ FALSE ;
 int KP_IV ;
 int RtlCopyMemory (int *,int *,int) ;
 int RtlZeroMemory (int *,int) ;
 int TRUE ;
 scalar_t__ kull_m_crypto_aesBlockEncryptDecrypt (int ,int *,int,int ) ;

BOOL kull_m_crypto_aesCTSEncrypt(HCRYPTKEY hKey, PBYTE data, DWORD szData, PBYTE pbIV)
{
 BOOL status = FALSE;
 DWORD nbBlock, lastLen;
 BYTE buffer[32], *ptr;

 if(szData > 16)
 {
  if(CryptSetKeyParam(hKey, KP_IV, pbIV, 0))
  {
   nbBlock = (szData + 15) >> 4;
   lastLen = (szData & 0xf) ? (szData & 0xf) : 16;
   if (nbBlock <= 2 || kull_m_crypto_aesBlockEncryptDecrypt(hKey, data, nbBlock - 2, TRUE))
   {
    ptr = &data[16 * (nbBlock - 2)];
    RtlCopyMemory(buffer, ptr, lastLen + 16);
    RtlZeroMemory(&buffer[lastLen + 16], 16 - lastLen);
    if(status = kull_m_crypto_aesBlockEncryptDecrypt(hKey, buffer, 2, TRUE))
    {
     RtlCopyMemory(ptr, buffer + 16, 16);
     RtlCopyMemory(&data[16 * nbBlock - 16], buffer, lastLen);
    }
   }
  }
 }
 else if(szData == 16)
  status = kull_m_crypto_aesBlockEncryptDecrypt(hKey, data, 1, TRUE);

 return status;
}
