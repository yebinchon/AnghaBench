
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sessionType; } ;
struct TYPE_8__ {TYPE_1__ publicKey; scalar_t__ hSessionKey; int hPrivateKey; int hProvParty; } ;
struct TYPE_7__ {scalar_t__ sessionType; int cbPublicKey; int pbPublicKey; } ;
typedef TYPE_2__* PMIMI_PUBLICKEY ;
typedef TYPE_3__* PKIWI_DH ;
typedef int PBYTE ;
typedef int BOOL ;


 int CryptDestroyKey (scalar_t__) ;
 scalar_t__ CryptImportKey (int ,int ,int ,int ,int ,scalar_t__*) ;
 int CryptSetKeyParam (scalar_t__,int ,int ,int ) ;
 int FALSE ;
 int KP_ALGID ;
 int PRINT_ERROR (char*,int ,scalar_t__,int ,scalar_t__) ;
 int PRINT_ERROR_AUTO (char*) ;
 int kull_m_crypto_algid_to_name (scalar_t__) ;

BOOL kull_m_crypto_dh_CreateSessionKey(PKIWI_DH dh, PMIMI_PUBLICKEY publicKey)
{
 BOOL status = FALSE;
 dh->hSessionKey = 0;
 if(dh && publicKey)
 {
  if(dh->publicKey.sessionType == publicKey->sessionType)
  {
   if(CryptImportKey(dh->hProvParty, publicKey->pbPublicKey, publicKey->cbPublicKey, dh->hPrivateKey, 0, &dh->hSessionKey))
   {
    if(!(status = CryptSetKeyParam(dh->hSessionKey, KP_ALGID, (PBYTE) &dh->publicKey.sessionType, 0)))
    {
     PRINT_ERROR_AUTO(L"CryptSetKeyParam");
     CryptDestroyKey(dh->hSessionKey);
     dh->hSessionKey = 0;
    }
   }
   else PRINT_ERROR_AUTO(L"CryptImportKey");

  }
  else PRINT_ERROR(L"Alg mismatch: DH - %s (%08x) / P - %s (%08x)\n", kull_m_crypto_algid_to_name(dh->publicKey.sessionType), dh->publicKey.sessionType, kull_m_crypto_algid_to_name(publicKey->sessionType), publicKey->sessionType);
 }
 return status;
}
