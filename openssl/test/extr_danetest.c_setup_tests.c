
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int CAfile ;
 int TEST_ptr (int ) ;
 int basedomain ;
 int run_tlsatest ;
 int test_get_argument (int) ;
 int tlsafile ;

int setup_tests(void)
{
    if (!TEST_ptr(basedomain = test_get_argument(0))
            || !TEST_ptr(CAfile = test_get_argument(1))
            || !TEST_ptr(tlsafile = test_get_argument(2)))
        return 0;

    ADD_TEST(run_tlsatest);
    return 1;
}
