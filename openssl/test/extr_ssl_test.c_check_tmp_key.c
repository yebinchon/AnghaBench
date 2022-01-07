
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tmp_key_type; } ;
struct TYPE_5__ {int expected_tmp_key_type; } ;
typedef TYPE_1__ SSL_TEST_CTX ;
typedef TYPE_2__ HANDSHAKE_RESULT ;


 int check_nid (char*,int ,int ) ;

__attribute__((used)) static int check_tmp_key(HANDSHAKE_RESULT *result, SSL_TEST_CTX *test_ctx)
{
    return check_nid("Tmp key", test_ctx->expected_tmp_key_type,
                     result->tmp_key_type);
}
