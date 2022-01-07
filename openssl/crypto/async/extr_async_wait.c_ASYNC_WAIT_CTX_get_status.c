
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; } ;
typedef TYPE_1__ ASYNC_WAIT_CTX ;



int ASYNC_WAIT_CTX_get_status(ASYNC_WAIT_CTX *ctx)
{
      return ctx->status;
}
