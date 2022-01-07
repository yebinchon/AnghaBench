
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct poly1305_data_st {int poly1305; } ;
struct TYPE_5__ {scalar_t__ data_type; scalar_t__ data_size; int data; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int OSSL_MAC_PARAM_KEY ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 TYPE_1__* OSSL_PARAM_locate_const (TYPE_1__ const*,int ) ;
 scalar_t__ POLY1305_KEY_SIZE ;
 int PROV_R_INVALID_KEY_LENGTH ;
 int Poly1305_Init (int *,int ) ;

__attribute__((used)) static int poly1305_set_ctx_params(void *vmacctx, const OSSL_PARAM *params)
{
    struct poly1305_data_st *ctx = vmacctx;
    const OSSL_PARAM *p = ((void*)0);

    if ((p = OSSL_PARAM_locate_const(params, OSSL_MAC_PARAM_KEY)) != ((void*)0)) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING
            || p->data_size != POLY1305_KEY_SIZE) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
            return 0;
        }
        Poly1305_Init(&ctx->poly1305, p->data);
    }
    return 1;
}
