
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_6__ {int oaep_labellen; scalar_t__ oaep_label; int saltlen; int mgf1md; int md; int pad_mode; scalar_t__ pub_exp; int nbits; } ;
typedef TYPE_1__ RSA_PKEY_CTX ;
typedef TYPE_2__ EVP_PKEY_CTX ;


 scalar_t__ BN_dup (scalar_t__) ;
 int OPENSSL_free (scalar_t__) ;
 scalar_t__ OPENSSL_memdup (scalar_t__,int ) ;
 int pkey_rsa_init (TYPE_2__*) ;

__attribute__((used)) static int pkey_rsa_copy(EVP_PKEY_CTX *dst, const EVP_PKEY_CTX *src)
{
    RSA_PKEY_CTX *dctx, *sctx;

    if (!pkey_rsa_init(dst))
        return 0;
    sctx = src->data;
    dctx = dst->data;
    dctx->nbits = sctx->nbits;
    if (sctx->pub_exp) {
        dctx->pub_exp = BN_dup(sctx->pub_exp);
        if (!dctx->pub_exp)
            return 0;
    }
    dctx->pad_mode = sctx->pad_mode;
    dctx->md = sctx->md;
    dctx->mgf1md = sctx->mgf1md;
    dctx->saltlen = sctx->saltlen;
    if (sctx->oaep_label) {
        OPENSSL_free(dctx->oaep_label);
        dctx->oaep_label = OPENSSL_memdup(sctx->oaep_label, sctx->oaep_labellen);
        if (!dctx->oaep_label)
            return 0;
        dctx->oaep_labellen = sctx->oaep_labellen;
    }
    return 1;
}
