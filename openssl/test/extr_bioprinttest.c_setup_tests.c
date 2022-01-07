
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPTION_CHOICE ;


 int ADD_ALL_TESTS (int ,int ) ;
 int ADD_TEST (int ) ;
 int OPT_EOF ;


 int jf_data ;
 int justprint ;
 int nelem (int ) ;
 int opt_next () ;
 int pw_params ;
 int test_big ;
 int test_fp ;
 int test_j ;
 int test_zu ;
 int zu_data ;

int setup_tests(void)
{
    OPTION_CHOICE o;

    while ((o = opt_next()) != OPT_EOF) {
        switch (o) {
        case 129:
            justprint = 1;
            break;
        case 128:
            break;
        default:
            return 0;
        }
    }

    ADD_TEST(test_big);
    ADD_ALL_TESTS(test_fp, nelem(pw_params));
    ADD_ALL_TESTS(test_zu, nelem(zu_data));
    ADD_ALL_TESTS(test_j, nelem(jf_data));
    return 1;
}
