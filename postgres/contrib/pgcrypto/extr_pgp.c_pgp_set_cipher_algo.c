
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cipher_algo; } ;
typedef TYPE_1__ PGP_Context ;


 int pgp_get_cipher_code (char const*) ;

int
pgp_set_cipher_algo(PGP_Context *ctx, const char *name)
{
 int code = pgp_get_cipher_code(name);

 if (code < 0)
  return code;
 ctx->cipher_algo = code;
 return 0;
}
