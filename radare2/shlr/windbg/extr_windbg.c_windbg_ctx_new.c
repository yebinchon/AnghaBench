
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* io_ptr; } ;
typedef TYPE_1__ WindCtx ;


 TYPE_1__* calloc (int,int) ;

WindCtx *windbg_ctx_new(void *io_ptr) {
 WindCtx *ctx = calloc (1, sizeof(WindCtx));
 if (!ctx) {
  return ((void*)0);
 }
 ctx->io_ptr = io_ptr;
 return ctx;
}
