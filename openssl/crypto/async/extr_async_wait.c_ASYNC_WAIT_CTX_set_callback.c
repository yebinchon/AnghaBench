
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* callback_arg; int callback; } ;
typedef int ASYNC_callback_fn ;
typedef TYPE_1__ ASYNC_WAIT_CTX ;



int ASYNC_WAIT_CTX_set_callback(ASYNC_WAIT_CTX *ctx,
                                ASYNC_callback_fn callback,
                                void *callback_arg)
{
      if (ctx == ((void*)0))
          return 0;

      ctx->callback = callback;
      ctx->callback_arg = callback_arg;
      return 1;
}
