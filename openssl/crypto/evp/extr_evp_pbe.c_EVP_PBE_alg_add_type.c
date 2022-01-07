
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pbe_type; int pbe_nid; int cipher_nid; int md_nid; int * keygen; } ;
typedef int EVP_PBE_KEYGEN ;
typedef TYPE_1__ EVP_PBE_CTL ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_EVP_PBE_ALG_ADD_TYPE ;
 int EVPerr (int ,int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int * pbe_algs ;
 int pbe_cmp ;
 int * sk_EVP_PBE_CTL_new (int ) ;
 int sk_EVP_PBE_CTL_push (int *,TYPE_1__*) ;

int EVP_PBE_alg_add_type(int pbe_type, int pbe_nid, int cipher_nid,
                         int md_nid, EVP_PBE_KEYGEN *keygen)
{
    EVP_PBE_CTL *pbe_tmp;

    if (pbe_algs == ((void*)0)) {
        pbe_algs = sk_EVP_PBE_CTL_new(pbe_cmp);
        if (pbe_algs == ((void*)0))
            goto err;
    }

    if ((pbe_tmp = OPENSSL_malloc(sizeof(*pbe_tmp))) == ((void*)0))
        goto err;

    pbe_tmp->pbe_type = pbe_type;
    pbe_tmp->pbe_nid = pbe_nid;
    pbe_tmp->cipher_nid = cipher_nid;
    pbe_tmp->md_nid = md_nid;
    pbe_tmp->keygen = keygen;

    if (!sk_EVP_PBE_CTL_push(pbe_algs, pbe_tmp)) {
        OPENSSL_free(pbe_tmp);
        goto err;
    }
    return 1;

 err:
    EVPerr(EVP_F_EVP_PBE_ALG_ADD_TYPE, ERR_R_MALLOC_FAILURE);
    return 0;
}
