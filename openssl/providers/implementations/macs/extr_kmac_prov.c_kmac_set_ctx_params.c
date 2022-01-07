
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct kmac_data_st {int custom_len; int custom; int key_len; int key; int out_len; int xof_mode; int digest; } ;
struct TYPE_7__ {int data_size; int data; } ;
typedef TYPE_1__ OSSL_PARAM ;
typedef int EVP_MD ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int EVP_MD_block_size (int const*) ;
 int KMAC_MAX_CUSTOM ;
 int KMAC_MAX_KEY ;
 int OSSL_MAC_PARAM_CUSTOM ;
 int OSSL_MAC_PARAM_KEY ;
 int OSSL_MAC_PARAM_SIZE ;
 int OSSL_MAC_PARAM_XOF ;
 int OSSL_PARAM_get_int (TYPE_1__ const*,int *) ;
 int OSSL_PARAM_get_size_t (TYPE_1__ const*,int *) ;
 TYPE_1__* OSSL_PARAM_locate_const (TYPE_1__ const*,int ) ;
 int PROV_R_INVALID_CUSTOM_LENGTH ;
 int PROV_R_INVALID_KEY_LENGTH ;
 int encode_string (int ,int *,int ,int) ;
 int kmac_bytepad_encode_key (int ,int *,int ,int,int ) ;
 int * ossl_prov_digest_md (int *) ;

__attribute__((used)) static int kmac_set_ctx_params(void *vmacctx, const OSSL_PARAM *params)
{
    struct kmac_data_st *kctx = vmacctx;
    const OSSL_PARAM *p;
    const EVP_MD *digest = ossl_prov_digest_md(&kctx->digest);

    if ((p = OSSL_PARAM_locate_const(params, OSSL_MAC_PARAM_XOF)) != ((void*)0)
        && !OSSL_PARAM_get_int(p, &kctx->xof_mode))
        return 0;
    if (((p = OSSL_PARAM_locate_const(params, OSSL_MAC_PARAM_SIZE)) != ((void*)0))
        && !OSSL_PARAM_get_size_t(p, &kctx->out_len))
        return 0;
    if ((p = OSSL_PARAM_locate_const(params, OSSL_MAC_PARAM_KEY)) != ((void*)0)) {
        if (p->data_size < 4 || p->data_size > KMAC_MAX_KEY) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
            return 0;
        }
        if (!kmac_bytepad_encode_key(kctx->key, &kctx->key_len,
                                     p->data, p->data_size,
                                     EVP_MD_block_size(digest)))
            return 0;
    }
    if ((p = OSSL_PARAM_locate_const(params, OSSL_MAC_PARAM_CUSTOM))
        != ((void*)0)) {
        if (p->data_size > KMAC_MAX_CUSTOM) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_CUSTOM_LENGTH);
            return 0;
        }
        if (!encode_string(kctx->custom, &kctx->custom_len,
                           p->data, p->data_size))
            return 0;
    }
    return 1;
}
