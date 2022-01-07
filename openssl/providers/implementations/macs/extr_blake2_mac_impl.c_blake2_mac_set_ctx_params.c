
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct blake2_mac_data_st {int params; void* key; } ;
struct TYPE_7__ {scalar_t__ data_size; int data; } ;
typedef TYPE_1__ OSSL_PARAM ;


 scalar_t__ BLAKE2_KEYBYTES ;
 size_t BLAKE2_OUTBYTES ;
 int BLAKE2_PARAM_SET_DIGEST_LENGTH (int *,int ) ;
 int BLAKE2_PARAM_SET_KEY_LENGTH (int *,int ) ;
 int BLAKE2_PARAM_SET_PERSONAL (int *,int ,scalar_t__) ;
 int BLAKE2_PARAM_SET_SALT (int *,int ,scalar_t__) ;
 scalar_t__ BLAKE2_PERSONALBYTES ;
 scalar_t__ BLAKE2_SALTBYTES ;
 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int OSSL_MAC_PARAM_CUSTOM ;
 int OSSL_MAC_PARAM_KEY ;
 int OSSL_MAC_PARAM_SALT ;
 int OSSL_MAC_PARAM_SIZE ;
 int OSSL_PARAM_get_octet_string (TYPE_1__ const*,void**,scalar_t__,size_t*) ;
 int OSSL_PARAM_get_size_t (TYPE_1__ const*,size_t*) ;
 TYPE_1__* OSSL_PARAM_locate_const (TYPE_1__ const*,int ) ;
 int PROV_R_INVALID_CUSTOM_LENGTH ;
 int PROV_R_INVALID_KEY_LENGTH ;
 int PROV_R_INVALID_SALT_LENGTH ;
 int PROV_R_NOT_XOF_OR_INVALID_LENGTH ;
 int memset (void*,int ,scalar_t__) ;

__attribute__((used)) static int blake2_mac_set_ctx_params(void *vmacctx, const OSSL_PARAM params[])
{
    struct blake2_mac_data_st *macctx = vmacctx;
    const OSSL_PARAM *p;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_MAC_PARAM_SIZE)) != ((void*)0)) {
        size_t size;

        if (!OSSL_PARAM_get_size_t(p, &size)
            || size < 1
            || size > BLAKE2_OUTBYTES) {
            ERR_raise(ERR_LIB_PROV, PROV_R_NOT_XOF_OR_INVALID_LENGTH);
            return 0;
        }
        BLAKE2_PARAM_SET_DIGEST_LENGTH(&macctx->params, (uint8_t)size);
    }

    if ((p = OSSL_PARAM_locate_const(params, OSSL_MAC_PARAM_KEY)) != ((void*)0)) {
        size_t len;
        void *key_p = macctx->key;

        if (!OSSL_PARAM_get_octet_string(p, &key_p, BLAKE2_KEYBYTES, &len)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
            return 0;
        }

        memset(macctx->key + len, 0, BLAKE2_KEYBYTES - len);

        BLAKE2_PARAM_SET_KEY_LENGTH(&macctx->params, (uint8_t)len);
    }

    if ((p = OSSL_PARAM_locate_const(params, OSSL_MAC_PARAM_CUSTOM))
        != ((void*)0)) {




        if (p->data_size > BLAKE2_PERSONALBYTES) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_CUSTOM_LENGTH);
            return 0;
        }
        BLAKE2_PARAM_SET_PERSONAL(&macctx->params, p->data, p->data_size);
    }

    if ((p = OSSL_PARAM_locate_const(params, OSSL_MAC_PARAM_SALT)) != ((void*)0)) {




        if (p->data_size > BLAKE2_SALTBYTES) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_SALT_LENGTH);
            return 0;
        }
        BLAKE2_PARAM_SET_SALT(&macctx->params, p->data, p->data_size);
    }
    return 1;
}
