
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* param; } ;
typedef TYPE_2__ X509_STORE_CTX ;
typedef int X509 ;
struct TYPE_5__ {int flags; } ;


 int X509_V_OK ;
 int X509_chain_check_suiteb (int *,int *,int *,int ) ;
 int verify_cb_cert (TYPE_2__*,int *,int ,int) ;

__attribute__((used)) static int check_leaf_suiteb(X509_STORE_CTX *ctx, X509 *cert)
{
    int err = X509_chain_check_suiteb(((void*)0), cert, ((void*)0), ctx->param->flags);

    if (err == X509_V_OK)
        return 1;
    return verify_cb_cert(ctx, cert, 0, err);
}
