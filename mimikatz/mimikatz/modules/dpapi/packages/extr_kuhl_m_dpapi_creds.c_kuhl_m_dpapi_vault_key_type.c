
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; scalar_t__ IV; scalar_t__ szIV; } ;
typedef TYPE_1__* PKULL_M_CRED_VAULT_CREDENTIAL_ATTRIBUTE ;
typedef int * LPCVOID ;
typedef scalar_t__ LPCBYTE ;
typedef int HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int AES_128_KEY_SIZE ;
 int AES_256_KEY_SIZE ;
 int CALG_AES_128 ;
 int CALG_AES_256 ;
 int CRYPT_MODE_CBC ;
 int CryptSetKeyParam (int ,int ,scalar_t__,int ) ;
 int FALSE ;
 int KP_IV ;
 int KP_MODE ;
 int kull_m_crypto_hkey (int ,int ,int *,int ,int ,int *,int *) ;

BOOL kuhl_m_dpapi_vault_key_type(PKULL_M_CRED_VAULT_CREDENTIAL_ATTRIBUTE attribute, HCRYPTPROV hProv, BYTE aes128[AES_128_KEY_SIZE], BYTE aes256[AES_256_KEY_SIZE], HCRYPTKEY *hKey, BOOL *isAttr)
{
 BOOL status = FALSE;
 DWORD mode = CRYPT_MODE_CBC, calgId, keyLen;
 LPCVOID key;

 *isAttr = attribute->id && (attribute->id < 100);
 if(*isAttr)
 {
  calgId = CALG_AES_128;
  key = aes128;
  keyLen = AES_128_KEY_SIZE;

 }
 else
 {
  calgId = CALG_AES_256;
  key = aes256;
  keyLen = AES_256_KEY_SIZE;
 }

 if(status = kull_m_crypto_hkey(hProv, calgId, key, keyLen, 0, hKey, ((void*)0)))
 {
  CryptSetKeyParam(*hKey, KP_MODE, (LPCBYTE) &mode, 0);
  if(attribute->szIV && attribute->IV)
   CryptSetKeyParam(*hKey, KP_IV, attribute->IV, 0);
 }
 return status;
}
