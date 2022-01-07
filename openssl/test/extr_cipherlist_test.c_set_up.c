
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* test_case_name; struct TYPE_7__* client; struct TYPE_7__* server; } ;
typedef TYPE_1__ CIPHERLIST_TEST_FIXTURE ;


 TYPE_1__* OPENSSL_zalloc (int) ;
 TYPE_1__* SSL_CTX_new (int ) ;
 int TEST_ptr (TYPE_1__*) ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int tear_down (TYPE_1__*) ;

__attribute__((used)) static CIPHERLIST_TEST_FIXTURE *set_up(const char *const test_case_name)
{
    CIPHERLIST_TEST_FIXTURE *fixture;

    if (!TEST_ptr(fixture = OPENSSL_zalloc(sizeof(*fixture))))
        return ((void*)0);
    fixture->test_case_name = test_case_name;
    if (!TEST_ptr(fixture->server = SSL_CTX_new(TLS_server_method()))
            || !TEST_ptr(fixture->client = SSL_CTX_new(TLS_client_method()))) {
        tear_down(fixture);
        return ((void*)0);
    }
    return fixture;
}
