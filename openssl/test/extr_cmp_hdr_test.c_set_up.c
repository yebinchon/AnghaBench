
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* test_case_name; struct TYPE_8__* hdr; struct TYPE_8__* cmp_ctx; } ;
typedef TYPE_1__ CMP_HDR_TEST_FIXTURE ;


 TYPE_1__* OPENSSL_zalloc (int) ;
 TYPE_1__* OSSL_CMP_CTX_new () ;
 TYPE_1__* OSSL_CMP_PKIHEADER_new () ;
 int TEST_ptr (TYPE_1__*) ;
 int tear_down (TYPE_1__*) ;

__attribute__((used)) static CMP_HDR_TEST_FIXTURE *set_up(const char *const test_case_name)
{
    CMP_HDR_TEST_FIXTURE *fixture;

    if (!TEST_ptr(fixture = OPENSSL_zalloc(sizeof(*fixture))))
        return ((void*)0);
    fixture->test_case_name = test_case_name;
    if (!TEST_ptr(fixture->cmp_ctx = OSSL_CMP_CTX_new()))
        goto err;
    if (!TEST_ptr(fixture->hdr = OSSL_CMP_PKIHEADER_new()))
        goto err;
    return fixture;

 err:
    tear_down(fixture);
    return ((void*)0);
}
