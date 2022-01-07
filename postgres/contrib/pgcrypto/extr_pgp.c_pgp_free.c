
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pub_key; } ;
typedef TYPE_1__ PGP_Context ;


 int pgp_key_free (scalar_t__) ;
 int px_free (TYPE_1__*) ;
 int px_memset (TYPE_1__*,int ,int) ;

int
pgp_free(PGP_Context *ctx)
{
 if (ctx->pub_key)
  pgp_key_free(ctx->pub_key);
 px_memset(ctx, 0, sizeof *ctx);
 px_free(ctx);
 return 0;
}
