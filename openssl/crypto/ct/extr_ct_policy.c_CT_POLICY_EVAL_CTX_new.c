
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int epoch_time_in_ms; } ;
typedef TYPE_1__ CT_POLICY_EVAL_CTX ;


 int CT_F_CT_POLICY_EVAL_CTX_NEW ;
 int CTerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 scalar_t__ SCT_CLOCK_DRIFT_TOLERANCE ;
 scalar_t__ time (int *) ;

CT_POLICY_EVAL_CTX *CT_POLICY_EVAL_CTX_new(void)
{
    CT_POLICY_EVAL_CTX *ctx = OPENSSL_zalloc(sizeof(CT_POLICY_EVAL_CTX));

    if (ctx == ((void*)0)) {
        CTerr(CT_F_CT_POLICY_EVAL_CTX_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }


    ctx->epoch_time_in_ms = (uint64_t)(time(((void*)0)) + SCT_CLOCK_DRIFT_TOLERANCE) *
            1000;

    return ctx;
}
