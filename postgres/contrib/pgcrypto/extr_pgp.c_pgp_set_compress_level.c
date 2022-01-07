
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int compress_level; } ;
typedef TYPE_1__ PGP_Context ;


 int PXE_ARGUMENT_ERROR ;

int
pgp_set_compress_level(PGP_Context *ctx, int level)
{
 if (level >= 0 && level <= 9)
 {
  ctx->compress_level = level;
  return 0;
 }
 return PXE_ARGUMENT_ERROR;
}
