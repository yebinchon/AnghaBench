
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t block_size; } ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ EVP_MD ;


 int EVP_F_EVP_MD_BLOCK_SIZE ;
 int EVP_R_MESSAGE_DIGEST_IS_NULL ;
 int EVPerr (int ,int ) ;
 int OSSL_DIGEST_PARAM_BLOCK_SIZE ;
 int OSSL_PARAM_END ;
 int OSSL_PARAM_construct_size_t (int ,size_t*) ;
 int evp_do_md_getparams (TYPE_1__ const*,int *) ;

int EVP_MD_block_size(const EVP_MD *md)
{
    int ok;
    size_t v = md->block_size;
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };

    if (md == ((void*)0)) {
        EVPerr(EVP_F_EVP_MD_BLOCK_SIZE, EVP_R_MESSAGE_DIGEST_IS_NULL);
        return -1;
    }

    params[0] = OSSL_PARAM_construct_size_t(OSSL_DIGEST_PARAM_BLOCK_SIZE, &v);
    ok = evp_do_md_getparams(md, params);

    return ok != 0 ? (int)v : -1;
}
