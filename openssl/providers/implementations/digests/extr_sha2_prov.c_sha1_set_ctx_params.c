
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data_type; int data; int data_size; } ;
typedef int SHA_CTX ;
typedef TYPE_1__ OSSL_PARAM ;


 int EVP_CTRL_SSL3_MASTER_SECRET ;
 int OSSL_DIGEST_PARAM_SSL3_MS ;
 scalar_t__ OSSL_PARAM_OCTET_STRING ;
 TYPE_1__* OSSL_PARAM_locate_const (TYPE_1__ const*,int ) ;
 int sha1_ctrl (int *,int ,int ,int ) ;

__attribute__((used)) static int sha1_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    const OSSL_PARAM *p;
    SHA_CTX *ctx = (SHA_CTX *)vctx;

    if (ctx != ((void*)0) && params != ((void*)0)) {
        p = OSSL_PARAM_locate_const(params, OSSL_DIGEST_PARAM_SSL3_MS);
        if (p != ((void*)0) && p->data_type == OSSL_PARAM_OCTET_STRING)
            return sha1_ctrl(ctx, EVP_CTRL_SSL3_MASTER_SECRET, p->data_size,
                             p->data);
    }
    return 0;
}
