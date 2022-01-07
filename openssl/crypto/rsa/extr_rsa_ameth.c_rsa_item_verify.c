
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int algorithm; } ;
typedef TYPE_1__ X509_ALGOR ;
typedef int EVP_PKEY ;
typedef int EVP_MD_CTX ;
typedef int ASN1_ITEM ;
typedef int ASN1_BIT_STRING ;


 scalar_t__ EVP_PKEY_RSA_PSS ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int RSA_F_RSA_ITEM_VERIFY ;
 int RSA_R_UNSUPPORTED_SIGNATURE_TYPE ;
 int RSAerr (int ,int ) ;
 scalar_t__ rsa_pss_to_ctx (int *,int *,TYPE_1__*,int *) ;

__attribute__((used)) static int rsa_item_verify(EVP_MD_CTX *ctx, const ASN1_ITEM *it, void *asn,
                           X509_ALGOR *sigalg, ASN1_BIT_STRING *sig,
                           EVP_PKEY *pkey)
{

    if (OBJ_obj2nid(sigalg->algorithm) != EVP_PKEY_RSA_PSS) {
        RSAerr(RSA_F_RSA_ITEM_VERIFY, RSA_R_UNSUPPORTED_SIGNATURE_TYPE);
        return -1;
    }
    if (rsa_pss_to_ctx(ctx, ((void*)0), sigalg, pkey) > 0) {

        return 2;
    }
    return -1;
}
