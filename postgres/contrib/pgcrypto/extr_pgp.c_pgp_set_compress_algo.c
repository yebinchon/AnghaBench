
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int compress_algo; } ;
typedef TYPE_1__ PGP_Context ;






 int PXE_ARGUMENT_ERROR ;

int
pgp_set_compress_algo(PGP_Context *ctx, int algo)
{
 switch (algo)
 {
  case 130:
  case 129:
  case 128:
  case 131:
   ctx->compress_algo = algo;
   return 0;
 }
 return PXE_ARGUMENT_ERROR;
}
