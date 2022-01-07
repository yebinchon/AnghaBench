
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ s2k_mode; int s2k_count; } ;
typedef TYPE_1__ PGP_Context ;


 scalar_t__ PGP_S2K_ISALTED ;
 int PXE_ARGUMENT_ERROR ;
 int PXE_OK ;

int
pgp_set_s2k_count(PGP_Context *ctx, int count)
{
 if (ctx->s2k_mode == PGP_S2K_ISALTED && count >= 1024 && count <= 65011712)
 {
  ctx->s2k_count = count;
  return PXE_OK;
 }
 return PXE_ARGUMENT_ERROR;
}
