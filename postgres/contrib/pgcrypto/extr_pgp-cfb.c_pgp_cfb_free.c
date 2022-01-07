
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ciph; } ;
typedef TYPE_1__ PGP_CFB ;


 int px_cipher_free (int ) ;
 int px_free (TYPE_1__*) ;
 int px_memset (TYPE_1__*,int ,int) ;

void
pgp_cfb_free(PGP_CFB *ctx)
{
 px_cipher_free(ctx->ciph);
 px_memset(ctx, 0, sizeof(*ctx));
 px_free(ctx);
}
