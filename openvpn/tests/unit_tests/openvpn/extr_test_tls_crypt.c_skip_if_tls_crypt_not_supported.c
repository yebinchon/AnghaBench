
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int digest; int cipher; } ;
struct test_tls_crypt_context {TYPE_1__ kt; } ;


 int skip () ;

__attribute__((used)) static void skip_if_tls_crypt_not_supported(struct test_tls_crypt_context *ctx)
{
    if (!ctx->kt.cipher || !ctx->kt.digest)
    {
        skip();
    }
}
