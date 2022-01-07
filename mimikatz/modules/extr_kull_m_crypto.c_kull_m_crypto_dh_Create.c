
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int g; int p; } ;
struct TYPE_6__ {int cbPublicKey; int * pbPublicKey; int sessionType; } ;
struct TYPE_7__ {TYPE_1__ publicKey; int hPrivateKey; int hProvParty; } ;
typedef TYPE_2__* PKIWI_DH ;
typedef int * PBYTE ;
typedef int KIWI_DH ;
typedef scalar_t__ BOOL ;
typedef int ALG_ID ;


 int CALG_DH_EPHEM ;
 int CRYPT_EXPORTABLE ;
 int CRYPT_PREGEN ;
 int CRYPT_VERIFYCONTEXT ;
 scalar_t__ CryptAcquireContext (int *,int *,int ,int ,int ) ;
 scalar_t__ CryptExportKey (int ,int ,int ,int ,int *,int*) ;
 scalar_t__ CryptGenKey (int ,int ,int,int *) ;
 scalar_t__ CryptSetKeyParam (int ,int ,int *,int ) ;
 scalar_t__ FALSE ;
 int KP_G ;
 int KP_P ;
 int KP_X ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int MS_ENH_DSS_DH_PROV ;
 int PROV_DSS_DH ;
 int PUBLICKEYBLOB ;
 scalar_t__ kull_m_crypto_dh_Delete (TYPE_2__*) ;
 TYPE_3__ kull_m_crypto_dh_GlobParameters ;

PKIWI_DH kull_m_crypto_dh_Create(ALG_ID targetSessionKeyType)
{
 PKIWI_DH dh = ((void*)0);
 BOOL status = FALSE;

 if(dh = (PKIWI_DH) LocalAlloc(LPTR, sizeof(KIWI_DH)))
 {
  dh->publicKey.sessionType = targetSessionKeyType;
  if(CryptAcquireContext(&dh->hProvParty, ((void*)0), MS_ENH_DSS_DH_PROV, PROV_DSS_DH, CRYPT_VERIFYCONTEXT))
   if(CryptGenKey(dh->hProvParty, CALG_DH_EPHEM, (1024 << 16) | CRYPT_EXPORTABLE | CRYPT_PREGEN, &dh->hPrivateKey))
    if(CryptSetKeyParam(dh->hPrivateKey, KP_P, (PBYTE) &kull_m_crypto_dh_GlobParameters.p, 0))
     if(CryptSetKeyParam(dh->hPrivateKey, KP_G, (PBYTE) &kull_m_crypto_dh_GlobParameters.g, 0))
      if(CryptSetKeyParam(dh->hPrivateKey, KP_X, ((void*)0), 0))
       if(CryptExportKey(dh->hPrivateKey, 0, PUBLICKEYBLOB, 0, ((void*)0), &dh->publicKey.cbPublicKey))
        if(dh->publicKey.pbPublicKey = (PBYTE) LocalAlloc(LPTR, dh->publicKey.cbPublicKey))
         status = CryptExportKey(dh->hPrivateKey, 0, PUBLICKEYBLOB, 0, dh->publicKey.pbPublicKey, &dh->publicKey.cbPublicKey);
  if(!status)
   dh = (PKIWI_DH) kull_m_crypto_dh_Delete(dh);
 }
 return dh;
}
