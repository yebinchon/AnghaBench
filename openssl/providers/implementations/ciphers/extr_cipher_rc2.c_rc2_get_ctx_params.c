
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {unsigned char* data; scalar_t__ data_type; size_t return_size; } ;
struct TYPE_9__ {int ivlen; int iv; } ;
struct TYPE_10__ {TYPE_1__ base; int key_bits; } ;
typedef TYPE_2__ PROV_RC2_CTX ;
typedef TYPE_3__ OSSL_PARAM ;
typedef int ASN1_TYPE ;


 int ASN1_TYPE_free (int *) ;
 int * ASN1_TYPE_new () ;
 int ASN1_TYPE_set_int_octetstring (int *,long,int ,int ) ;
 int ERR_LIB_PROV ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_raise (int ,int ) ;
 int OSSL_CIPHER_PARAM_ALG_ID ;
 int OSSL_CIPHER_PARAM_RC2_KEYBITS ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 TYPE_3__* OSSL_PARAM_locate (TYPE_3__*,int ) ;
 int OSSL_PARAM_set_size_t (TYPE_3__*,int ) ;
 int PROV_R_FAILED_TO_SET_PARAMETER ;
 int cipher_generic_get_ctx_params (void*,TYPE_3__*) ;
 int i2d_ASN1_TYPE (int *,unsigned char**) ;
 long rc2_keybits_to_magic (int ) ;

__attribute__((used)) static int rc2_get_ctx_params(void *vctx, OSSL_PARAM params[])
{
    PROV_RC2_CTX *ctx = (PROV_RC2_CTX *)vctx;
    OSSL_PARAM *p;

    if (!cipher_generic_get_ctx_params(vctx, params))
        return 0;
    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_RC2_KEYBITS);
    if (p != ((void*)0) && !OSSL_PARAM_set_size_t(p, ctx->key_bits)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = OSSL_PARAM_locate(params, OSSL_CIPHER_PARAM_ALG_ID);
    if (p != ((void*)0)) {
        long num;
        int i;
        ASN1_TYPE *type;
        unsigned char *d = p->data;
        unsigned char **dd = d == ((void*)0) ? ((void*)0) : &d;

        if (p->data_type != OSSL_PARAM_OCTET_STRING) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
        if ((type = ASN1_TYPE_new()) == ((void*)0)) {
            ERR_raise(ERR_LIB_PROV, ERR_R_MALLOC_FAILURE);
            return 0;
        }


        num = rc2_keybits_to_magic(ctx->key_bits);
        if (!ASN1_TYPE_set_int_octetstring(type, num,
                                           ctx->base.iv, ctx->base.ivlen)) {
            ASN1_TYPE_free(type);
            ERR_raise(ERR_LIB_PROV, ERR_R_MALLOC_FAILURE);
            return 0;
        }




        i = i2d_ASN1_TYPE(type, dd);
        if (i >= 0)
            p->return_size = (size_t)i;

        ASN1_TYPE_free(type);
        if (i < 0) {
            ERR_raise(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }
    return 1;
}
