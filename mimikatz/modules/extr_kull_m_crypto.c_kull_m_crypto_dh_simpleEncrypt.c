
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PBYTE ;
typedef int * LPVOID ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CryptDestroyKey (int ) ;
 scalar_t__ CryptDuplicateKey (int ,int *,int ,int *) ;
 scalar_t__ CryptEncrypt (int ,int ,int ,int ,int *,int *,int ) ;
 scalar_t__ FALSE ;
 int LPTR ;
 int * LocalAlloc (int ,int ) ;
 int * LocalFree (int *) ;
 int RtlCopyMemory (int *,int *,int ) ;
 int TRUE ;

BOOL kull_m_crypto_dh_simpleEncrypt(HCRYPTKEY key, LPVOID data, DWORD dataLen, LPVOID *out, DWORD *outLen)
{
 BOOL status = FALSE;
 HCRYPTKEY hTmp;
 *out = ((void*)0);
 *outLen = dataLen;
 if(CryptDuplicateKey(key, ((void*)0), 0, &hTmp))
 {
  if(CryptEncrypt(hTmp, 0, TRUE, 0, ((void*)0), outLen, 0))
  {
   if(*out = LocalAlloc(LPTR, *outLen))
   {
    RtlCopyMemory(*out, data, dataLen);
    if(!(status = CryptEncrypt(hTmp, 0, TRUE, 0, (PBYTE) *out, &dataLen, *outLen)))
     *out = LocalFree(*out);
   }
  }
  CryptDestroyKey(hTmp);
 }
 return status;
}
