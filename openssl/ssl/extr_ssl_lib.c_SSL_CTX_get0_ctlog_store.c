
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* ctlog_store; } ;
typedef TYPE_1__ SSL_CTX ;
typedef int CTLOG_STORE ;



const CTLOG_STORE *SSL_CTX_get0_ctlog_store(const SSL_CTX *ctx)
{
    return ctx->ctlog_store;
}
