
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int X509_PUBKEY ;
typedef int X509V3_EXT_METHOD ;
struct TYPE_12__ {scalar_t__ flags; TYPE_4__* subject_cert; TYPE_2__* subject_req; } ;
typedef TYPE_5__ X509V3_CTX ;
struct TYPE_10__ {int * key; } ;
struct TYPE_11__ {TYPE_3__ cert_info; } ;
struct TYPE_8__ {int * pubkey; } ;
struct TYPE_9__ {TYPE_1__ req_info; } ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (int *) ;
 int * ASN1_OCTET_STRING_new () ;
 int ASN1_OCTET_STRING_set (int *,unsigned char*,unsigned int) ;
 scalar_t__ CTX_TEST ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_Digest (unsigned char const*,int,unsigned char*,unsigned int*,int ,int *) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_sha1 () ;
 int X509V3_F_S2I_SKEY_ID ;
 int X509V3_R_NO_PUBLIC_KEY ;
 int X509V3err (int ,int ) ;
 int X509_PUBKEY_get0_param (int *,unsigned char const**,int*,int *,int *) ;
 int * s2i_ASN1_OCTET_STRING (int *,TYPE_5__*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static ASN1_OCTET_STRING *s2i_skey_id(X509V3_EXT_METHOD *method,
                                      X509V3_CTX *ctx, char *str)
{
    ASN1_OCTET_STRING *oct;
    X509_PUBKEY *pubkey;
    const unsigned char *pk;
    int pklen;
    unsigned char pkey_dig[EVP_MAX_MD_SIZE];
    unsigned int diglen;

    if (strcmp(str, "hash"))
        return s2i_ASN1_OCTET_STRING(method, ctx, str);

    if ((oct = ASN1_OCTET_STRING_new()) == ((void*)0)) {
        X509V3err(X509V3_F_S2I_SKEY_ID, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    if (ctx && (ctx->flags == CTX_TEST))
        return oct;

    if (!ctx || (!ctx->subject_req && !ctx->subject_cert)) {
        X509V3err(X509V3_F_S2I_SKEY_ID, X509V3_R_NO_PUBLIC_KEY);
        goto err;
    }

    if (ctx->subject_req)
        pubkey = ctx->subject_req->req_info.pubkey;
    else
        pubkey = ctx->subject_cert->cert_info.key;

    if (pubkey == ((void*)0)) {
        X509V3err(X509V3_F_S2I_SKEY_ID, X509V3_R_NO_PUBLIC_KEY);
        goto err;
    }

    X509_PUBKEY_get0_param(((void*)0), &pk, &pklen, ((void*)0), pubkey);

    if (!EVP_Digest(pk, pklen, pkey_dig, &diglen, EVP_sha1(), ((void*)0)))
        goto err;

    if (!ASN1_OCTET_STRING_set(oct, pkey_dig, diglen)) {
        X509V3err(X509V3_F_S2I_SKEY_ID, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    return oct;

 err:
    ASN1_OCTET_STRING_free(oct);
    return ((void*)0);
}
