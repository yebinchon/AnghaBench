
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int convert_crlf; } ;
typedef TYPE_1__ PGP_Context ;



int
pgp_set_convert_crlf(PGP_Context *ctx, int doit)
{
 ctx->convert_crlf = doit ? 1 : 0;
 return 0;
}
