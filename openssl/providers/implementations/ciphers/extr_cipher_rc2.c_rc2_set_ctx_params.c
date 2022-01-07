
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int iv ;
struct TYPE_13__ {int ivlen; int keylen; } ;
struct TYPE_12__ {unsigned char* data; scalar_t__ data_type; int data_size; } ;
struct TYPE_11__ {int key_bits; TYPE_5__ base; } ;
typedef TYPE_1__ PROV_RC2_CTX ;
typedef TYPE_2__ OSSL_PARAM ;
typedef int ASN1_TYPE ;


 int ASN1_TYPE_free (int *) ;
 scalar_t__ ASN1_TYPE_get_int_octetstring (int *,long*,unsigned char*,int) ;
 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int OSSL_CIPHER_PARAM_ALG_ID ;
 int OSSL_CIPHER_PARAM_RC2_KEYBITS ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 int OSSL_PARAM_get_size_t (TYPE_2__ const*,int*) ;
 TYPE_2__* OSSL_PARAM_locate (TYPE_2__*,int ) ;
 TYPE_2__* OSSL_PARAM_locate_const (TYPE_2__*,int ) ;
 int PROV_R_FAILED_TO_GET_PARAMETER ;
 int PROV_R_FAILED_TO_SET_PARAMETER ;
 int cipher_generic_initiv (TYPE_5__*,unsigned char*,size_t) ;
 int cipher_generic_set_ctx_params (void*,TYPE_2__*) ;
 int * d2i_ASN1_TYPE (int *,unsigned char const**,int ) ;
 int rc2_magic_to_keybits (long) ;

__attribute__((used)) static int rc2_set_ctx_params(void *vctx, OSSL_PARAM params[])
{
    PROV_RC2_CTX *ctx = (PROV_RC2_CTX *)vctx;
    const OSSL_PARAM *p;

    if (!cipher_generic_set_ctx_params(vctx, params))
        return 0;
    p = OSSL_PARAM_locate_const(params, OSSL_CIPHER_PARAM_RC2_KEYBITS);
    if (p != ((void*)0)) {
         if (!OSSL_PARAM_get_size_t(p, &ctx->key_bits)) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
    }
    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_ALG_ID);
    if (p != ((void*)0)) {
        ASN1_TYPE *type = ((void*)0);
        long num = 0;
        const unsigned char *d = p->data;
        int ret = 1;
        unsigned char iv[16];

        if (p->data_type != OSSL_PARAM_OCTET_STRING
            || ctx->base.ivlen > sizeof(iv)
            || (type = d2i_ASN1_TYPE(((void*)0), &d, p->data_size)) == ((void*)0)
            || ((size_t)ASN1_TYPE_get_int_octetstring(type, &num, iv,
                                                      ctx->base.ivlen)
                != ctx->base.ivlen)
            || !cipher_generic_initiv(&ctx->base, iv, ctx->base.ivlen)
            || (ctx->key_bits = rc2_magic_to_keybits(num)) == 0) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            ret = 0;
        }
        ASN1_TYPE_free(type);
        if (ret == 0)
            return 0;





        ctx->base.keylen = ctx->key_bits / 8;
    }
    return 1;
}
