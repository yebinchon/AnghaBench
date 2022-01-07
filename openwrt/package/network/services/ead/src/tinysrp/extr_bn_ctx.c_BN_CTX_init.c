
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * bn; scalar_t__ too_many; scalar_t__ depth; scalar_t__ flags; scalar_t__ tos; } ;
typedef TYPE_1__ BN_CTX ;


 int BN_CTX_NUM ;
 int BN_init (int *) ;

void BN_CTX_init(BN_CTX *ctx)
 {
 int i;
 ctx->tos = 0;
 ctx->flags = 0;
 ctx->depth = 0;
 ctx->too_many = 0;
 for (i = 0; i < BN_CTX_NUM; i++)
  BN_init(&(ctx->bn[i]));
 }
