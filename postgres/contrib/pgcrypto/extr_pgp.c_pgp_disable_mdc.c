
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int disable_mdc; } ;
typedef TYPE_1__ PGP_Context ;



int
pgp_disable_mdc(PGP_Context *ctx, int disable)
{
 ctx->disable_mdc = disable ? 1 : 0;
 return 0;
}
