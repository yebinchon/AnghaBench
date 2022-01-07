
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handshake_mode; } ;
typedef TYPE_1__ SSL_TEST_CTX ;






__attribute__((used)) static int post_handshake_op(const SSL_TEST_CTX *test_ctx)
{
    switch (test_ctx->handshake_mode) {
    case 130:
    case 129:
    case 128:
        return 1;
    default:
        return 0;
    }
}
