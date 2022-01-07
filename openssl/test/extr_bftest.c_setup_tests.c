
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPTION_CHOICE ;


 int ADD_ALL_TESTS (int ,int) ;
 int ADD_TEST (int ) ;
 int KEY_TEST_NUM ;
 int NUM_TESTS ;
 int OPT_EOF ;


 int * bf_key ;
 int cbc_data ;
 int ebcdic2ascii (int ,int ,int ) ;
 int opt_next () ;
 int print_test_data () ;
 int strlen (int ) ;
 int test_bf_cbc ;
 int test_bf_cfb64 ;
 int test_bf_ecb ;
 int test_bf_ecb_raw ;
 int test_bf_ofb64 ;
 int test_bf_set_key ;

int setup_tests(void)
{

    OPTION_CHOICE o;
    while ((o = opt_next()) != OPT_EOF) {
        switch(o) {
        case 129:
            print_test_data();
            return 1;
        case 128:
            break;
        default:
           return 0;
        }
    }

    ADD_ALL_TESTS(test_bf_ecb_raw, 2);
    ADD_ALL_TESTS(test_bf_ecb, NUM_TESTS);
    ADD_ALL_TESTS(test_bf_set_key, KEY_TEST_NUM-1);
    ADD_TEST(test_bf_cbc);
    ADD_TEST(test_bf_cfb64);
    ADD_TEST(test_bf_ofb64);

    return 1;
}
