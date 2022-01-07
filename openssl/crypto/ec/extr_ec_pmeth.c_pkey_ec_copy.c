
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int kdf_ukmlen; int * kdf_ukm; int kdf_outlen; int kdf_md; int kdf_type; scalar_t__ co_key; int md; scalar_t__ gen_group; } ;
struct TYPE_6__ {TYPE_2__* data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef TYPE_2__ EC_PKEY_CTX ;


 scalar_t__ EC_GROUP_dup (scalar_t__) ;
 scalar_t__ EC_KEY_dup (scalar_t__) ;
 int * OPENSSL_memdup (int *,int ) ;
 int pkey_ec_init (TYPE_1__*) ;

__attribute__((used)) static int pkey_ec_copy(EVP_PKEY_CTX *dst, const EVP_PKEY_CTX *src)
{
    EC_PKEY_CTX *dctx, *sctx;
    if (!pkey_ec_init(dst))
        return 0;
    sctx = src->data;
    dctx = dst->data;
    if (sctx->gen_group) {
        dctx->gen_group = EC_GROUP_dup(sctx->gen_group);
        if (!dctx->gen_group)
            return 0;
    }
    dctx->md = sctx->md;

    if (sctx->co_key) {
        dctx->co_key = EC_KEY_dup(sctx->co_key);
        if (!dctx->co_key)
            return 0;
    }
    dctx->kdf_type = sctx->kdf_type;
    dctx->kdf_md = sctx->kdf_md;
    dctx->kdf_outlen = sctx->kdf_outlen;
    if (sctx->kdf_ukm) {
        dctx->kdf_ukm = OPENSSL_memdup(sctx->kdf_ukm, sctx->kdf_ukmlen);
        if (!dctx->kdf_ukm)
            return 0;
    } else
        dctx->kdf_ukm = ((void*)0);
    dctx->kdf_ukmlen = sctx->kdf_ukmlen;
    return 1;
}
