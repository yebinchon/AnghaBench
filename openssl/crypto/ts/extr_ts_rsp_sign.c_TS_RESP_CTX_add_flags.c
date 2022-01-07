
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ TS_RESP_CTX ;



void TS_RESP_CTX_add_flags(TS_RESP_CTX *ctx, int flags)
{
    ctx->flags |= flags;
}
