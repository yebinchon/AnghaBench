
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cbSecret; int data; } ;
struct TYPE_8__ {int bits; TYPE_2__ hardkey; } ;
struct TYPE_5__ {scalar_t__ cbSecret; int data; } ;
struct TYPE_7__ {int type; TYPE_1__ key; } ;
typedef int PVOID ;
typedef TYPE_3__* PKULL_M_CRED_VAULT_POLICY_KEY_MBDK ;
typedef TYPE_4__* PKIWI_BCRYPT_KEY ;
typedef char* PDWORD ;
typedef scalar_t__ PBYTE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ AES_128_KEY_SIZE ;
 scalar_t__ AES_256_KEY_SIZE ;
 int FALSE ;
 int RtlCopyMemory (int *,int ,scalar_t__) ;

BOOL kull_m_cred_vault_policy_key(PVOID data, DWORD size, BYTE aes128[AES_128_KEY_SIZE], BYTE aes256[AES_256_KEY_SIZE])
{
 BOOL status = FALSE;
 DWORD keySize128, keySize256;
 PBYTE ptr = (PBYTE) data;
 PKULL_M_CRED_VAULT_POLICY_KEY_MBDK pMbdk;
 PKIWI_BCRYPT_KEY pBcrypt;

 keySize128 = *(PDWORD) ptr;
 if(keySize128 >= 0x24)
 {
  if(*(PDWORD) (ptr + 3 * sizeof(DWORD)) == 'MBDK')
  {
   pMbdk = (PKULL_M_CRED_VAULT_POLICY_KEY_MBDK) ptr;
   if(status = ((pMbdk->type == 2) && (pMbdk->key.cbSecret == AES_128_KEY_SIZE)))
    RtlCopyMemory(aes128, pMbdk->key.data, AES_128_KEY_SIZE);
  }
  else if(*(PDWORD) (ptr + 4 * sizeof(DWORD)) == 'MSSK')
  {
   pBcrypt = (PKIWI_BCRYPT_KEY) (ptr + 3 * sizeof(DWORD));
   if(status = ((pBcrypt->bits == 128) && (pBcrypt->hardkey.cbSecret == AES_128_KEY_SIZE)))
    RtlCopyMemory(aes128, pBcrypt->hardkey.data, AES_128_KEY_SIZE);
  }

  if(status)
  {
   status = FALSE;
   ptr += sizeof(DWORD) + keySize128;
   keySize256 = *(PDWORD) ptr;
   if(keySize256 >= 0x34)
   {
    if(*(PDWORD) (ptr + 3 * sizeof(DWORD)) == 'MBDK')
    {
     pMbdk = (PKULL_M_CRED_VAULT_POLICY_KEY_MBDK) ptr;
     if(status = ((pMbdk->type == 1) && (pMbdk->key.cbSecret == AES_256_KEY_SIZE)))
      RtlCopyMemory(aes256, pMbdk->key.data, AES_256_KEY_SIZE);
    }
    else if(*(PDWORD) (ptr + 4 * sizeof(DWORD)) == 'MSSK')
    {
     pBcrypt = (PKIWI_BCRYPT_KEY) (ptr + 3 * sizeof(DWORD));
     if(status = ((pBcrypt->bits == 256) && (pBcrypt->hardkey.cbSecret == AES_256_KEY_SIZE)))
      RtlCopyMemory(aes256, pBcrypt->hardkey.data, AES_256_KEY_SIZE);
    }
   }
  }
 }
 return status;
}
