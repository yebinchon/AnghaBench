
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct siphash_data_st {int siphash; } ;
struct TYPE_6__ {scalar_t__ data_type; scalar_t__ data_size; int data; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int OSSL_MAC_PARAM_KEY ;
 int OSSL_MAC_PARAM_SIZE ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 int OSSL_PARAM_get_size_t (TYPE_1__ const*,size_t*) ;
 TYPE_1__* OSSL_PARAM_locate_const (TYPE_1__ const*,int ) ;
 scalar_t__ SIPHASH_KEY_SIZE ;
 int SipHash_Init (int *,int ,int ,int ) ;
 int SipHash_set_hash_size (int *,size_t) ;

__attribute__((used)) static int siphash_set_params(void *vmacctx, const OSSL_PARAM *params)
{
    struct siphash_data_st *ctx = vmacctx;
    const OSSL_PARAM *p = ((void*)0);

    if ((p = OSSL_PARAM_locate_const(params, OSSL_MAC_PARAM_SIZE)) != ((void*)0)) {
        size_t size;

        if (!OSSL_PARAM_get_size_t(p, &size)
            || !SipHash_set_hash_size(&ctx->siphash, size))
            return 0;
    }
    if ((p = OSSL_PARAM_locate_const(params, OSSL_MAC_PARAM_KEY)) != ((void*)0))
        if (p->data_type != OSSL_PARAM_OCTET_STRING
            || p->data_size != SIPHASH_KEY_SIZE
            || !SipHash_Init(&ctx->siphash, p->data, 0, 0))
            return 0;
    return 1;
}
