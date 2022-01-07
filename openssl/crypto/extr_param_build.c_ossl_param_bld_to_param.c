
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {size_t data_size; int data_type; int * data; } ;
struct TYPE_9__ {int curr; size_t const total_blocks; size_t const secure_blocks; } ;
typedef int OSSL_PARAM_BLD_BLOCK ;
typedef TYPE_1__ OSSL_PARAM_BLD ;
typedef TYPE_2__ OSSL_PARAM ;


 size_t const ALIGN_SIZE ;
 int CRYPTO_F_OSSL_PARAM_BLD_TO_PARAM ;
 int CRYPTO_R_SECURE_MALLOC_FAILURE ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_2__* OPENSSL_malloc (size_t const) ;
 int OPENSSL_secure_free (int *) ;
 int * OPENSSL_secure_malloc (size_t const) ;
 int OSSL_PARAM_ALLOCATED_END ;
 size_t bytes_to_blocks (int) ;
 TYPE_2__* param_bld_convert (TYPE_1__*,TYPE_2__*,int *,int *) ;

OSSL_PARAM *ossl_param_bld_to_param(OSSL_PARAM_BLD *bld)
{
    OSSL_PARAM_BLD_BLOCK *blk, *s = ((void*)0);
    OSSL_PARAM *params, *last;
    const size_t p_blks = bytes_to_blocks((1 + bld->curr) * sizeof(*params));
    const size_t total = ALIGN_SIZE * (p_blks + bld->total_blocks);
    const size_t ss = ALIGN_SIZE * bld->secure_blocks;

    if (ss > 0) {
        s = OPENSSL_secure_malloc(ss);
        if (s == ((void*)0)) {
            CRYPTOerr(CRYPTO_F_OSSL_PARAM_BLD_TO_PARAM,
                      CRYPTO_R_SECURE_MALLOC_FAILURE);
            return ((void*)0);
        }
    }
    params = OPENSSL_malloc(total);
    if (params == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_OSSL_PARAM_BLD_TO_PARAM, ERR_R_MALLOC_FAILURE);
        OPENSSL_secure_free(s);
        return ((void*)0);
    }
    blk = p_blks + (OSSL_PARAM_BLD_BLOCK *)(params);
    last = param_bld_convert(bld, params, blk, s);
    last->data_size = ss;
    last->data = s;
    last->data_type = OSSL_PARAM_ALLOCATED_END;
    return params;
}
