
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {int sym_key_len; int const* sym_key; } ;
typedef TYPE_1__ PGP_Context ;


 int PXE_ARGUMENT_ERROR ;

int
pgp_set_symkey(PGP_Context *ctx, const uint8 *key, int len)
{
 if (key == ((void*)0) || len < 1)
  return PXE_ARGUMENT_ERROR;
 ctx->sym_key = key;
 ctx->sym_key_len = len;
 return 0;
}
