
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_4__ {int expected; int cmp_ctx; } ;


 int CMP_HDR_TEST_FIXTURE ;
 int EXECUTE_TEST (int ,int (*) (TYPE_1__*)) ;
 int OSSL_CMP_CTX_set1_subjectName (int ,int *) ;
 int SETUP_TEST_FIXTURE (int ,int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int X509_NAME_ADD (int *,char*,char*) ;
 int X509_NAME_free (int *) ;
 int * X509_NAME_new () ;
 int execute_HDR_init_test ;
 TYPE_1__* fixture ;
 int result ;
 int set_up ;
 int tear_down (TYPE_1__*) ;

__attribute__((used)) static int test_HDR_init_with_subject(void)
{
    SETUP_TEST_FIXTURE(CMP_HDR_TEST_FIXTURE, set_up);
    X509_NAME *subject = ((void*)0);

    fixture->expected = 1;
    if (!TEST_ptr(subject = X509_NAME_new())
        || !TEST_true(X509_NAME_ADD(subject, "CN", "Common Name"))
        || !TEST_true(OSSL_CMP_CTX_set1_subjectName(fixture->cmp_ctx,
                                                    subject))) {
        tear_down(fixture);
        fixture = ((void*)0);
    }
    X509_NAME_free(subject);
    EXECUTE_TEST(execute_HDR_init_test, tear_down);
    return result;
}
