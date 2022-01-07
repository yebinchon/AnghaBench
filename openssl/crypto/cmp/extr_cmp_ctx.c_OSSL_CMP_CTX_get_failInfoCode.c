
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int failInfoCode; } ;
typedef TYPE_1__ OSSL_CMP_CTX ;


 int CMP_R_NULL_ARGUMENT ;
 int CMPerr (int ,int ) ;

int OSSL_CMP_CTX_get_failInfoCode(const OSSL_CMP_CTX *ctx)
{
    if (ctx == ((void*)0)) {
        CMPerr(0, CMP_R_NULL_ARGUMENT);
        return -1;
    }
    return ctx->failInfoCode;
}
