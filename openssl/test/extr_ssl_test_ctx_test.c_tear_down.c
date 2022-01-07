
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int expected_ctx; } ;
typedef TYPE_1__ SSL_TEST_CTX_TEST_FIXTURE ;


 int OPENSSL_free (TYPE_1__*) ;
 int SSL_TEST_CTX_free (int ) ;

__attribute__((used)) static void tear_down(SSL_TEST_CTX_TEST_FIXTURE *fixture)
{
    SSL_TEST_CTX_free(fixture->expected_ctx);
    OPENSSL_free(fixture);
}
