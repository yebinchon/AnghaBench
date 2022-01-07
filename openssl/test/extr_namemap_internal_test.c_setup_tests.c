
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_cipherbyname ;
 int test_digestbyname ;
 int test_namemap_independent ;
 int test_namemap_stored ;

int setup_tests(void)
{
    ADD_TEST(test_namemap_independent);
    ADD_TEST(test_namemap_stored);
    ADD_TEST(test_digestbyname);
    ADD_TEST(test_cipherbyname);
    return 1;
}
