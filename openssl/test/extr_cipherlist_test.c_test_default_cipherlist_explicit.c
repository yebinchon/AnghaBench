
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int client; int server; } ;


 int EXECUTE_CIPHERLIST_TEST () ;
 int SETUP_CIPHERLIST_TEST_FIXTURE () ;
 int SSL_CTX_set_cipher_list (int ,char*) ;
 int TEST_true (int ) ;
 TYPE_1__* fixture ;
 int result ;
 int tear_down (TYPE_1__*) ;

__attribute__((used)) static int test_default_cipherlist_explicit(void)
{
    SETUP_CIPHERLIST_TEST_FIXTURE();
    if (fixture == ((void*)0))
        return 0;
    if (!TEST_true(SSL_CTX_set_cipher_list(fixture->server, "DEFAULT"))
            || !TEST_true(SSL_CTX_set_cipher_list(fixture->client, "DEFAULT")))
        tear_down(fixture);
    EXECUTE_CIPHERLIST_TEST();
    return result;
}
