
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ keygen_info_count; TYPE_3__* pmeth; } ;
struct TYPE_12__ {int type; } ;
struct TYPE_13__ {TYPE_1__ ktmp; } ;
struct TYPE_15__ {TYPE_2__ raw_data; int type; int * ctx; } ;
struct TYPE_14__ {int pkey_id; } ;
typedef TYPE_4__ MAC_PKEY_CTX ;
typedef TYPE_5__ EVP_PKEY_CTX ;
typedef int EVP_MAC ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_PKEY_MAC_INIT ;
 int * EVP_MAC_CTX_new (int *) ;
 int * EVP_MAC_fetch (int *,int ,int *) ;
 int EVP_PKEY_CMAC ;
 int EVP_PKEY_CTX_set_data (TYPE_5__*,TYPE_4__*) ;
 int EVPerr (int ,int ) ;
 int MAC_TYPE_MAC ;
 int MAC_TYPE_RAW ;
 int OBJ_nid2sn (int) ;
 int OPENSSL_free (TYPE_4__*) ;
 TYPE_4__* OPENSSL_zalloc (int) ;
 int V_ASN1_OCTET_STRING ;
 int pkey_mac_cleanup (TYPE_5__*) ;

__attribute__((used)) static int pkey_mac_init(EVP_PKEY_CTX *ctx)
{
    MAC_PKEY_CTX *hctx;

    int nid = ctx->pmeth->pkey_id;
    EVP_MAC *mac = EVP_MAC_fetch(((void*)0), OBJ_nid2sn(nid), ((void*)0));

    if ((hctx = OPENSSL_zalloc(sizeof(*hctx))) == ((void*)0)) {
        EVPerr(EVP_F_PKEY_MAC_INIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    hctx->ctx = EVP_MAC_CTX_new(mac);
    if (hctx->ctx == ((void*)0)) {
        OPENSSL_free(hctx);
        return 0;
    }

    if (nid == EVP_PKEY_CMAC) {
        hctx->type = MAC_TYPE_MAC;
    } else {
        hctx->type = MAC_TYPE_RAW;
        hctx->raw_data.ktmp.type = V_ASN1_OCTET_STRING;
    }

    pkey_mac_cleanup(ctx);
    EVP_PKEY_CTX_set_data(ctx, hctx);
    ctx->keygen_info_count = 0;

    return 1;
}
