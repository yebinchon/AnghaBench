
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWSTR ;
typedef int * PBYTE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int CRYPT_STRING_BASE64 ;
 scalar_t__ CryptStringToBinary (int ,int ,int ,int *,scalar_t__*,int *,int *) ;
 scalar_t__ FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 scalar_t__ LocalFree (int *) ;

BOOL kull_m_string_quick_base64_to_Binary(PCWSTR base64, PBYTE *data, DWORD *szData)
{
 BOOL status = FALSE;
 *data = ((void*)0);
 *szData = 0;
 if(CryptStringToBinary(base64, 0, CRYPT_STRING_BASE64, ((void*)0), szData, ((void*)0), ((void*)0)))
 {
  if(*data = (PBYTE) LocalAlloc(LPTR, *szData))
  {
   status = CryptStringToBinary(base64, 0, CRYPT_STRING_BASE64, *data, szData, ((void*)0), ((void*)0));
   if(!status)
    *data = (PBYTE) LocalFree(*data);
  }
 }
 return status;
}
