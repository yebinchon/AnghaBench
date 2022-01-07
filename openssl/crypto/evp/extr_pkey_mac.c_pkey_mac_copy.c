
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


struct TYPE_18__ {scalar_t__ keygen_info_count; } ;
struct TYPE_16__ {int ktmp; int md; } ;
struct TYPE_17__ {int type; TYPE_1__ raw_data; TYPE_12__* ctx; } ;
struct TYPE_15__ {int * data; } ;
typedef TYPE_2__ MAC_PKEY_CTX ;
typedef TYPE_3__ EVP_PKEY_CTX ;


 int ASN1_STRING_copy (int *,int *) ;
 int * ASN1_STRING_get0_data (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_PKEY_MAC_COPY ;
 TYPE_12__* EVP_MAC_CTX_dup (TYPE_12__*) ;
 int EVP_MAC_CTX_mac (TYPE_12__*) ;
 int EVP_MAC_up_ref (int ) ;
 TYPE_2__* EVP_PKEY_CTX_get_data (TYPE_3__ const*) ;
 int EVP_PKEY_CTX_set_data (TYPE_3__*,TYPE_2__*) ;
 int EVPerr (int ,int ) ;


 TYPE_2__* OPENSSL_zalloc (int) ;
 int pkey_mac_cleanup (TYPE_3__*) ;

__attribute__((used)) static int pkey_mac_copy(EVP_PKEY_CTX *dst, const EVP_PKEY_CTX *src)
{
    MAC_PKEY_CTX *sctx, *dctx;

    sctx = EVP_PKEY_CTX_get_data(src);
    if (sctx->ctx->data == ((void*)0))
        return 0;

    dctx = OPENSSL_zalloc(sizeof(*dctx));
    if (dctx == ((void*)0)) {
        EVPerr(EVP_F_PKEY_MAC_COPY, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    EVP_PKEY_CTX_set_data(dst, dctx);
    dst->keygen_info_count = 0;

    dctx->ctx = EVP_MAC_CTX_dup(sctx->ctx);
    if (dctx->ctx == ((void*)0))
        goto err;
    if (!EVP_MAC_up_ref(EVP_MAC_CTX_mac(dctx->ctx)))
        goto err;

    dctx->type = sctx->type;

    switch (dctx->type) {
    case 128:
        dctx->raw_data.md = sctx->raw_data.md;
        if (ASN1_STRING_get0_data(&sctx->raw_data.ktmp) != ((void*)0) &&
            !ASN1_STRING_copy(&dctx->raw_data.ktmp, &sctx->raw_data.ktmp))
            goto err;
        break;
    case 129:

        break;
    default:

        return 0;
    }
    return 1;
 err:
    pkey_mac_cleanup(dst);
    return 0;
}
