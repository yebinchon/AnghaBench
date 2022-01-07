
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int ADD_TEST (int ) ;
 int OSSL_NELEM (int ) ;
 int case_change ;
 int test_ctype_chars ;
 int test_ctype_eof ;
 int test_ctype_tolower ;
 int test_ctype_toupper ;

int setup_tests(void)
{
    ADD_ALL_TESTS(test_ctype_chars, 256);
    ADD_ALL_TESTS(test_ctype_toupper, OSSL_NELEM(case_change));
    ADD_ALL_TESTS(test_ctype_tolower, OSSL_NELEM(case_change));
    ADD_TEST(test_ctype_eof);
    return 1;
}
