
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * log_store; } ;
typedef TYPE_1__ CT_POLICY_EVAL_CTX ;
typedef int CTLOG_STORE ;



void CT_POLICY_EVAL_CTX_set_shared_CTLOG_STORE(CT_POLICY_EVAL_CTX *ctx,
                                               CTLOG_STORE *log_store)
{
    ctx->log_store = log_store;
}
