
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ref ;
struct TYPE_4__ {int expected; int cmp_ctx; } ;


 int CMP_HDR_TEST_FIXTURE ;
 int CMP_TEST_REFVALUE_LENGTH ;
 int EXECUTE_TEST (int ,int (*) (TYPE_1__*)) ;
 int OSSL_CMP_CTX_set1_referenceValue (int ,unsigned char*,int) ;
 int RAND_bytes (unsigned char*,int) ;
 int SETUP_TEST_FIXTURE (int ,int ) ;
 int TEST_int_eq (int,int ) ;
 int TEST_true (int ) ;
 int execute_HDR_init_test ;
 TYPE_1__* fixture ;
 int result ;
 int set_up ;
 int tear_down (TYPE_1__*) ;

__attribute__((used)) static int test_HDR_init(void)
{
    SETUP_TEST_FIXTURE(CMP_HDR_TEST_FIXTURE, set_up);
    unsigned char ref[CMP_TEST_REFVALUE_LENGTH];

    fixture->expected = 1;
    if (!TEST_int_eq(1, RAND_bytes(ref, sizeof(ref)))
            || !TEST_true(OSSL_CMP_CTX_set1_referenceValue(fixture->cmp_ctx,
                                                           ref, sizeof(ref)))) {
        tear_down(fixture);
        fixture = ((void*)0);
    }
    EXECUTE_TEST(execute_HDR_init_test, tear_down);
    return result;
}
