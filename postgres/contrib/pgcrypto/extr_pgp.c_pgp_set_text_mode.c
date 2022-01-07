
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int text_mode; } ;
typedef TYPE_1__ PGP_Context ;



int
pgp_set_text_mode(PGP_Context *ctx, int mode)
{
 ctx->text_mode = mode;
 return 0;
}
