
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cipher; } ;
struct TYPE_5__ {int * expected_cipher; } ;
typedef TYPE_1__ SSL_TEST_CTX ;
typedef TYPE_2__ HANDSHAKE_RESULT ;


 int TEST_ptr (int ) ;
 int TEST_str_eq (int *,int ) ;

__attribute__((used)) static int check_cipher(HANDSHAKE_RESULT *result, SSL_TEST_CTX *test_ctx)
{
    if (test_ctx->expected_cipher == ((void*)0))
        return 1;
    if (!TEST_ptr(result->cipher))
        return 0;
    if (!TEST_str_eq(test_ctx->expected_cipher,
                     result->cipher))
        return 0;
    return 1;
}
