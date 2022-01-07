
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int use_sess_key; } ;
typedef TYPE_1__ PGP_Context ;



int
pgp_set_sess_key(PGP_Context *ctx, int use)
{
 ctx->use_sess_key = use ? 1 : 0;
 return 0;
}
