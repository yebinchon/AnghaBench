
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expected_type; } ;
typedef TYPE_1__ OSSL_STORE_LOADER_CTX ;



__attribute__((used)) static int file_expect(OSSL_STORE_LOADER_CTX *ctx, int expected)
{
    ctx->expected_type = expected;
    return 1;
}
