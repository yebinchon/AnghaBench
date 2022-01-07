
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s2k_mode; } ;
typedef TYPE_1__ PGP_Context ;





 int PXE_ARGUMENT_ERROR ;
 int PXE_OK ;

int
pgp_set_s2k_mode(PGP_Context *ctx, int mode)
{
 int err = PXE_OK;

 switch (mode)
 {
  case 128:
  case 129:
  case 130:
   ctx->s2k_mode = mode;
   break;
  default:
   err = PXE_ARGUMENT_ERROR;
   break;
 }
 return err;
}
