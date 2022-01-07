
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pwszContainerName; int dwProvType; int pwszProvName; int member_6; int * member_5; int member_4; int member_3; int member_2; int member_1; int * member_0; } ;
typedef int LPCWSTR ;
typedef scalar_t__ LPCVOID ;
typedef int LPCBYTE ;
typedef int HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef TYPE_1__ CRYPT_KEY_PROV_INFO ;
typedef int BOOL ;


 int AT_KEYEXCHANGE ;
 int CRYPT_EXPORTABLE ;
 int CRYPT_NEWKEYSET ;
 scalar_t__ CryptAcquireContext (int *,int ,int ,int ,int ) ;
 int CryptDestroyKey (int ) ;
 scalar_t__ CryptImportKey (int ,int ,int ,int ,int ,int *) ;
 int FALSE ;
 int LocalFree (int ) ;
 int MS_ENHANCED_PROV ;
 int PRINT_ERROR_AUTO (char*) ;
 int PROV_RSA_FULL ;
 int kull_m_crypto_DerAndKeyInfoToPfx (scalar_t__,int ,TYPE_1__*,int ) ;
 int kull_m_crypto_close_hprov_delete_container (int ) ;
 int kull_m_string_getRandomGUID () ;

BOOL kull_m_crypto_DerAndKeyToPfx(LPCVOID der, DWORD derLen, LPCVOID key, DWORD keyLen, BOOL isPvk, LPCWSTR filename)
{
 BOOL isExported = FALSE;
 CRYPT_KEY_PROV_INFO infos = {((void*)0), MS_ENHANCED_PROV, PROV_RSA_FULL, 0, 0, ((void*)0), AT_KEYEXCHANGE};
 HCRYPTPROV hCryptProv;
 HCRYPTKEY hCryptKey;
 if(infos.pwszContainerName = kull_m_string_getRandomGUID())
 {
  if(CryptAcquireContext(&hCryptProv, infos.pwszContainerName, infos.pwszProvName, infos.dwProvType, CRYPT_NEWKEYSET))
  {
   if(CryptImportKey(hCryptProv, (LPCBYTE) key, keyLen, 0, CRYPT_EXPORTABLE, &hCryptKey))
   {
    isExported = kull_m_crypto_DerAndKeyInfoToPfx(der, derLen, &infos, filename);
    CryptDestroyKey(hCryptKey);
   }
   else PRINT_ERROR_AUTO(L"CryptImportKey");
   kull_m_crypto_close_hprov_delete_container(hCryptProv);



  }
  else PRINT_ERROR_AUTO(L"CryptAcquireContext");
  LocalFree(infos.pwszContainerName);
 }
 return isExported;
}
