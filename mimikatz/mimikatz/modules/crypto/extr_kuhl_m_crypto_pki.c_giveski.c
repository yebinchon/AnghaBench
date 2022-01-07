
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int member_0; int member_1; } ;
struct TYPE_13__ {int Value; int pszObjId; int fCritical; } ;
struct TYPE_10__ {int cbData; int pbData; } ;
struct TYPE_12__ {TYPE_1__ PublicKey; } ;
struct TYPE_11__ {int digest; } ;
typedef TYPE_2__ SHA_DIGEST ;
typedef int SHA_CTX ;
typedef TYPE_3__* PCERT_PUBLIC_KEY_INFO ;
typedef TYPE_4__* PCERT_EXTENSION ;
typedef TYPE_5__ CRYPT_DATA_BLOB ;
typedef int BOOL ;


 int A_SHAFinal (int *,TYPE_2__*) ;
 int A_SHAInit (int *) ;
 int A_SHAUpdate (int *,int ,int ) ;
 int FALSE ;
 int kuhl_m_crypto_c_sc_auth_quickEncode (int ,TYPE_5__*,int *) ;
 int szOID_SUBJECT_KEY_IDENTIFIER ;

BOOL giveski(PCERT_EXTENSION pCertExtension, PCERT_PUBLIC_KEY_INFO info)
{
 SHA_CTX ctx;
 SHA_DIGEST dgst;
 CRYPT_DATA_BLOB bit = {sizeof(dgst.digest), dgst.digest};
 A_SHAInit(&ctx);
 A_SHAUpdate(&ctx, info->PublicKey.pbData, info->PublicKey.cbData);
 A_SHAFinal(&ctx, &dgst);
 pCertExtension->pszObjId = szOID_SUBJECT_KEY_IDENTIFIER;
 pCertExtension->fCritical = FALSE;
 return kuhl_m_crypto_c_sc_auth_quickEncode(pCertExtension->pszObjId, &bit, &pCertExtension->Value);
}
