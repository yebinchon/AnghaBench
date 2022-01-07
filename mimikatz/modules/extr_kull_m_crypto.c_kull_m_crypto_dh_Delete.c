
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* pbPublicKey; } ;
struct TYPE_7__ {scalar_t__ hProvParty; scalar_t__ hSessionKey; scalar_t__ hPrivateKey; TYPE_1__ publicKey; } ;
typedef TYPE_2__* PKIWI_DH ;


 int CryptDestroyKey (scalar_t__) ;
 int CryptReleaseContext (scalar_t__,int ) ;
 scalar_t__ LocalFree (TYPE_2__*) ;

PKIWI_DH kull_m_crypto_dh_Delete(PKIWI_DH dh)
{
 if(dh)
 {
  if(dh->publicKey.pbPublicKey)
   LocalFree(dh->publicKey.pbPublicKey);
  if(dh->hPrivateKey)
   CryptDestroyKey(dh->hPrivateKey);
  if(dh->hSessionKey)
   CryptDestroyKey(dh->hSessionKey);
  if(dh->hProvParty)
   CryptReleaseContext(dh->hProvParty, 0);
  dh = (PKIWI_DH) LocalFree(dh);
 }
 return dh;
}
