
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_17__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_22__ {TYPE_10__* signature; int * sigprovctx; } ;
struct TYPE_21__ {TYPE_17__* exchange; int * exchprovctx; } ;
struct TYPE_23__ {TYPE_2__ sig; TYPE_1__ kex; } ;
struct TYPE_25__ {TYPE_4__* pmeth; int * peerkey; scalar_t__ engine; TYPE_3__ op; int propquery; int algorithm; int libctx; int operation; int * pkey; } ;
struct TYPE_24__ {scalar_t__ (* copy ) (TYPE_5__*,TYPE_5__ const*) ;} ;
struct TYPE_20__ {int * (* dupctx ) (int *) ;} ;
struct TYPE_19__ {int * (* dupctx ) (int *) ;} ;
typedef TYPE_5__ EVP_PKEY_CTX ;


 int ENGINE_init (scalar_t__) ;
 int ERR_R_ENGINE_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_EVP_PKEY_CTX_DUP ;
 int EVP_KEYEXCH_free (TYPE_17__*) ;
 int EVP_KEYEXCH_up_ref (TYPE_17__*) ;
 scalar_t__ EVP_PKEY_CTX_IS_DERIVE_OP (TYPE_5__ const*) ;
 scalar_t__ EVP_PKEY_CTX_IS_SIGNATURE_OP (TYPE_5__ const*) ;
 int EVP_PKEY_CTX_free (TYPE_5__*) ;
 int EVP_PKEY_up_ref (int *) ;
 int EVP_SIGNATURE_free (TYPE_10__*) ;
 int EVP_SIGNATURE_up_ref (TYPE_10__*) ;
 int EVPerr (int ,int ) ;
 int OPENSSL_free (TYPE_5__*) ;
 TYPE_5__* OPENSSL_zalloc (int) ;
 int ossl_assert (int ) ;
 int * stub1 (int *) ;
 int * stub2 (int *) ;
 scalar_t__ stub3 (TYPE_5__*,TYPE_5__ const*) ;

EVP_PKEY_CTX *EVP_PKEY_CTX_dup(const EVP_PKEY_CTX *pctx)
{
    EVP_PKEY_CTX *rctx;

    if (((pctx->pmeth == ((void*)0)) || (pctx->pmeth->copy == ((void*)0)))
            && ((EVP_PKEY_CTX_IS_DERIVE_OP(pctx)
                 && pctx->op.kex.exchprovctx == ((void*)0))
                || (EVP_PKEY_CTX_IS_SIGNATURE_OP(pctx)
                    && pctx->op.sig.sigprovctx == ((void*)0))))
        return ((void*)0);


    if (pctx->engine && !ENGINE_init(pctx->engine)) {
        EVPerr(EVP_F_EVP_PKEY_CTX_DUP, ERR_R_ENGINE_LIB);
        return 0;
    }

    rctx = OPENSSL_zalloc(sizeof(*rctx));
    if (rctx == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_CTX_DUP, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    if (pctx->pkey != ((void*)0))
        EVP_PKEY_up_ref(pctx->pkey);
    rctx->pkey = pctx->pkey;
    rctx->operation = pctx->operation;
    rctx->libctx = pctx->libctx;
    rctx->algorithm = pctx->algorithm;
    rctx->propquery = pctx->propquery;

    if (EVP_PKEY_CTX_IS_DERIVE_OP(pctx)) {
        if (pctx->op.kex.exchange != ((void*)0)) {
            rctx->op.kex.exchange = pctx->op.kex.exchange;
            if (!EVP_KEYEXCH_up_ref(rctx->op.kex.exchange)) {
                OPENSSL_free(rctx);
                return ((void*)0);
            }
        }
        if (pctx->op.kex.exchprovctx != ((void*)0)) {
            if (!ossl_assert(pctx->op.kex.exchange != ((void*)0)))
                return ((void*)0);
            rctx->op.kex.exchprovctx
                = pctx->op.kex.exchange->dupctx(pctx->op.kex.exchprovctx);
            if (rctx->op.kex.exchprovctx == ((void*)0)) {
                EVP_KEYEXCH_free(rctx->op.kex.exchange);
                OPENSSL_free(rctx);
                return ((void*)0);
            }
            return rctx;
        }
    } else if (EVP_PKEY_CTX_IS_SIGNATURE_OP(pctx)) {
        if (pctx->op.sig.signature != ((void*)0)) {
            rctx->op.sig.signature = pctx->op.sig.signature;
            if (!EVP_SIGNATURE_up_ref(rctx->op.sig.signature)) {
                OPENSSL_free(rctx);
                return ((void*)0);
            }
        }
        if (pctx->op.sig.sigprovctx != ((void*)0)) {
            if (!ossl_assert(pctx->op.sig.signature != ((void*)0)))
                return ((void*)0);
            rctx->op.sig.sigprovctx
                = pctx->op.sig.signature->dupctx(pctx->op.sig.sigprovctx);
            if (rctx->op.sig.sigprovctx == ((void*)0)) {
                EVP_SIGNATURE_free(rctx->op.sig.signature);
                OPENSSL_free(rctx);
                return ((void*)0);
            }
            return rctx;
        }
    }

    rctx->pmeth = pctx->pmeth;

    rctx->engine = pctx->engine;


    if (pctx->peerkey)
        EVP_PKEY_up_ref(pctx->peerkey);
    rctx->peerkey = pctx->peerkey;

    if (pctx->pmeth->copy(rctx, pctx) > 0)
        return rctx;

    rctx->pmeth = ((void*)0);
    EVP_PKEY_CTX_free(rctx);
    return ((void*)0);

}
