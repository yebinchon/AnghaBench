
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unicode_mode; } ;
typedef TYPE_1__ PGP_Context ;



int
pgp_set_unicode_mode(PGP_Context *ctx, int mode)
{
 ctx->unicode_mode = mode ? 1 : 0;
 return 0;
}
