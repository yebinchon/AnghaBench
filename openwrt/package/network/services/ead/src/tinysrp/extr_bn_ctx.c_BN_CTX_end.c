
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ depth; int * pos; int tos; scalar_t__ too_many; } ;
typedef TYPE_1__ BN_CTX ;


 scalar_t__ BN_CTX_NUM_POS ;
 int BN_CTX_start (TYPE_1__*) ;
 int assert (int) ;

void BN_CTX_end(BN_CTX *ctx)
 {
 if (ctx == ((void*)0)) return;
 assert(ctx->depth > 0);
 if (ctx->depth == 0)



  BN_CTX_start(ctx);

 ctx->too_many = 0;
 ctx->depth--;
 if (ctx->depth < BN_CTX_NUM_POS)
  ctx->tos = ctx->pos[ctx->depth];
 }
