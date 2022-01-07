
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* ctx2; struct TYPE_9__* prov2; struct TYPE_9__* ctx1; struct TYPE_9__* prov1; } ;
typedef TYPE_1__ FIXTURE ;


 TYPE_1__* OPENSSL_CTX_new () ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 TYPE_1__* OSSL_PROVIDER_load (TYPE_1__*,char*) ;
 int TEST_ptr (TYPE_1__*) ;
 int tear_down (TYPE_1__*) ;

__attribute__((used)) static FIXTURE *set_up(const char *testcase_name)
{
    FIXTURE *fixture;

    if (!TEST_ptr(fixture = OPENSSL_zalloc(sizeof(*fixture)))
        || !TEST_ptr(fixture->ctx1 = OPENSSL_CTX_new())
        || !TEST_ptr(fixture->prov1 = OSSL_PROVIDER_load(fixture->ctx1,
                                                         "default"))
        || !TEST_ptr(fixture->ctx2 = OPENSSL_CTX_new())
        || !TEST_ptr(fixture->prov2 = OSSL_PROVIDER_load(fixture->ctx2,
                                                         "default"))) {
        tear_down(fixture);
        return ((void*)0);
    }
    return fixture;
}
