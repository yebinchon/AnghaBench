
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* test_case_name; struct TYPE_7__* ctx; } ;
typedef TYPE_1__ OSSL_CMP_CTX_TEST_FIXTURE ;


 TYPE_1__* OPENSSL_zalloc (int) ;
 TYPE_1__* OSSL_CMP_CTX_new () ;
 int TEST_ptr (TYPE_1__*) ;
 int tear_down (TYPE_1__*) ;

__attribute__((used)) static OSSL_CMP_CTX_TEST_FIXTURE *set_up(const char *const test_case_name)
{
    OSSL_CMP_CTX_TEST_FIXTURE *fixture;

    if (!TEST_ptr(fixture = OPENSSL_zalloc(sizeof(*fixture))))
        return ((void*)0);
    if (!TEST_ptr(fixture->ctx = OSSL_CMP_CTX_new())) {
        tear_down(fixture);
        return ((void*)0);
    }
    fixture->test_case_name = test_case_name;
    return fixture;
}
