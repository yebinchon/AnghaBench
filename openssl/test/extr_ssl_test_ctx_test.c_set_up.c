
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* test_case_name; struct TYPE_7__* expected_ctx; } ;
typedef TYPE_1__ SSL_TEST_CTX_TEST_FIXTURE ;


 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 TYPE_1__* SSL_TEST_CTX_new () ;
 int TEST_ptr (TYPE_1__*) ;

__attribute__((used)) static SSL_TEST_CTX_TEST_FIXTURE *set_up(const char *const test_case_name)
{
    SSL_TEST_CTX_TEST_FIXTURE *fixture;

    if (!TEST_ptr(fixture = OPENSSL_zalloc(sizeof(*fixture))))
        return ((void*)0);
    fixture->test_case_name = test_case_name;
    if (!TEST_ptr(fixture->expected_ctx = SSL_TEST_CTX_new())) {
        OPENSSL_free(fixture);
        return ((void*)0);
    }
    return fixture;
}
