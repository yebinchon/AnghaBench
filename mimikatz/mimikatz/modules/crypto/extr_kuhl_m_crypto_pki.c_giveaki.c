
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int * member_1; int member_0; } ;
struct TYPE_15__ {int * member_1; int member_0; } ;
struct TYPE_14__ {int member_0; int member_1; } ;
struct TYPE_20__ {TYPE_4__ member_2; TYPE_3__ member_1; TYPE_2__ member_0; } ;
struct TYPE_19__ {int Value; int pszObjId; int fCritical; } ;
struct TYPE_13__ {int cbData; int pbData; } ;
struct TYPE_18__ {TYPE_1__ PublicKey; } ;
struct TYPE_17__ {int digest; } ;
typedef TYPE_5__ SHA_DIGEST ;
typedef int SHA_CTX ;
typedef TYPE_6__* PCERT_PUBLIC_KEY_INFO ;
typedef TYPE_7__* PCERT_EXTENSION ;
typedef TYPE_8__ CERT_AUTHORITY_KEY_ID2_INFO ;
typedef int BOOL ;


 int A_SHAFinal (int *,TYPE_5__*) ;
 int A_SHAInit (int *) ;
 int A_SHAUpdate (int *,int ,int ) ;
 int FALSE ;
 int kuhl_m_crypto_c_sc_auth_quickEncode (int ,TYPE_8__*,int *) ;
 int szOID_AUTHORITY_KEY_IDENTIFIER2 ;

BOOL giveaki(PCERT_EXTENSION pCertExtension, PCERT_PUBLIC_KEY_INFO info)
{
 SHA_CTX ctx;
 SHA_DIGEST dgst;
 CERT_AUTHORITY_KEY_ID2_INFO ainfo = {{sizeof(dgst.digest), dgst.digest}, {0, ((void*)0)}, {0, ((void*)0)}};
 A_SHAInit(&ctx);
 A_SHAUpdate(&ctx, info->PublicKey.pbData, info->PublicKey.cbData);
 A_SHAFinal(&ctx, &dgst);
 pCertExtension->pszObjId = szOID_AUTHORITY_KEY_IDENTIFIER2;
 pCertExtension->fCritical = FALSE;
 return kuhl_m_crypto_c_sc_auth_quickEncode(pCertExtension->pszObjId, &ainfo, &pCertExtension->Value);
}
