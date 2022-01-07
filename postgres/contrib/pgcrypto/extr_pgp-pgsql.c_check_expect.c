
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct debug_expect {int dummy; } ;
struct TYPE_3__ {scalar_t__ use_sess_key; } ;
typedef TYPE_1__ PGP_Context ;


 int EX_CHECK (int ) ;
 int cipher_algo ;
 int compress_algo ;
 int disable_mdc ;
 int s2k_cipher_algo ;
 int s2k_count ;
 int s2k_digest_algo ;
 int s2k_mode ;
 int unicode_mode ;
 int use_sess_key ;

__attribute__((used)) static void
check_expect(PGP_Context *ctx, struct debug_expect *ex)
{
 EX_CHECK(cipher_algo);
 EX_CHECK(s2k_mode);
 EX_CHECK(s2k_count);
 EX_CHECK(s2k_digest_algo);
 EX_CHECK(use_sess_key);
 if (ctx->use_sess_key)
  EX_CHECK(s2k_cipher_algo);
 EX_CHECK(disable_mdc);
 EX_CHECK(compress_algo);
 EX_CHECK(unicode_mode);
}
