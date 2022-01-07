
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s2k_digest_algo; } ;
typedef TYPE_1__ PGP_Context ;


 int pgp_get_digest_code (char const*) ;

int
pgp_set_s2k_digest_algo(PGP_Context *ctx, const char *name)
{
 int code = pgp_get_digest_code(name);

 if (code < 0)
  return code;
 ctx->s2k_digest_algo = code;
 return 0;
}
