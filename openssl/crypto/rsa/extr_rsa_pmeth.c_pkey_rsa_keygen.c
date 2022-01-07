
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* pmeth; scalar_t__ pkey_gencb; TYPE_2__* data; } ;
struct TYPE_8__ {int * pub_exp; int primes; int nbits; } ;
struct TYPE_7__ {int pkey_id; } ;
typedef TYPE_2__ RSA_PKEY_CTX ;
typedef int RSA ;
typedef TYPE_3__ EVP_PKEY_CTX ;
typedef int EVP_PKEY ;
typedef int BN_GENCB ;


 int BN_GENCB_free (int *) ;
 int * BN_GENCB_new () ;
 int * BN_new () ;
 int BN_set_word (int *,int ) ;
 int EVP_PKEY_assign (int *,int ,int *) ;
 int RSA_F4 ;
 int RSA_free (int *) ;
 int RSA_generate_multi_prime_key (int *,int ,int ,int *,int *) ;
 int * RSA_new () ;
 int evp_pkey_set_cb_translate (int *,TYPE_3__*) ;
 int rsa_set_pss_param (int *,TYPE_3__*) ;

__attribute__((used)) static int pkey_rsa_keygen(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey)
{
    RSA *rsa = ((void*)0);
    RSA_PKEY_CTX *rctx = ctx->data;
    BN_GENCB *pcb;
    int ret;

    if (rctx->pub_exp == ((void*)0)) {
        rctx->pub_exp = BN_new();
        if (rctx->pub_exp == ((void*)0) || !BN_set_word(rctx->pub_exp, RSA_F4))
            return 0;
    }
    rsa = RSA_new();
    if (rsa == ((void*)0))
        return 0;
    if (ctx->pkey_gencb) {
        pcb = BN_GENCB_new();
        if (pcb == ((void*)0)) {
            RSA_free(rsa);
            return 0;
        }
        evp_pkey_set_cb_translate(pcb, ctx);
    } else {
        pcb = ((void*)0);
    }
    ret = RSA_generate_multi_prime_key(rsa, rctx->nbits, rctx->primes,
                                       rctx->pub_exp, pcb);
    BN_GENCB_free(pcb);
    if (ret > 0 && !rsa_set_pss_param(rsa, ctx)) {
        RSA_free(rsa);
        return 0;
    }
    if (ret > 0)
        EVP_PKEY_assign(pkey, ctx->pmeth->pkey_id, rsa);
    else
        RSA_free(rsa);
    return ret;
}
