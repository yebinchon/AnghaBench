
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int flags; int nid; } ;
typedef TYPE_1__ TLS_GROUP_INFO ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;


 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new_id (int,int *) ;
 scalar_t__ EVP_PKEY_CTX_set_dh_nid (int *,int ) ;
 scalar_t__ EVP_PKEY_CTX_set_ec_paramgen_curve_nid (int *,int ) ;
 int EVP_PKEY_DH ;
 int EVP_PKEY_EC ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 scalar_t__ EVP_PKEY_paramgen (int *,int **) ;
 scalar_t__ EVP_PKEY_paramgen_init (int *) ;
 scalar_t__ EVP_PKEY_set_type (int *,int ) ;
 int TLS_GROUP_CURVE_CUSTOM ;
 int TLS_GROUP_FFDHE ;
 int TLS_GROUP_TYPE ;
 TYPE_1__* tls1_group_id_lookup (int ) ;

EVP_PKEY *ssl_generate_param_group(uint16_t id)
{
    EVP_PKEY_CTX *pctx = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    const TLS_GROUP_INFO *ginf = tls1_group_id_lookup(id);
    int pkey_ctx_id;

    if (ginf == ((void*)0))
        goto err;

    if ((ginf->flags & TLS_GROUP_TYPE) == TLS_GROUP_CURVE_CUSTOM) {
        pkey = EVP_PKEY_new();
        if (pkey != ((void*)0) && EVP_PKEY_set_type(pkey, ginf->nid))
            return pkey;
        EVP_PKEY_free(pkey);
        return ((void*)0);
    }

    pkey_ctx_id = (ginf->flags & TLS_GROUP_FFDHE)
                        ? EVP_PKEY_DH : EVP_PKEY_EC;
    pctx = EVP_PKEY_CTX_new_id(pkey_ctx_id, ((void*)0));
    if (pctx == ((void*)0))
        goto err;
    if (EVP_PKEY_paramgen_init(pctx) <= 0)
        goto err;

    if (ginf->flags & TLS_GROUP_FFDHE) {
        if (EVP_PKEY_CTX_set_dh_nid(pctx, ginf->nid) <= 0)
            goto err;
    }

    else



    {
        if (EVP_PKEY_CTX_set_ec_paramgen_curve_nid(pctx, ginf->nid) <= 0)
            goto err;
    }

    if (EVP_PKEY_paramgen(pctx, &pkey) <= 0) {
        EVP_PKEY_free(pkey);
        pkey = ((void*)0);
    }

 err:
    EVP_PKEY_CTX_free(pctx);
    return pkey;
}
