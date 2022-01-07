
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_idea_cbc ;
 int test_idea_cfb64 ;
 int test_idea_ecb ;

int setup_tests(void)
{

    ADD_TEST(test_idea_ecb);
    ADD_TEST(test_idea_cbc);
    ADD_TEST(test_idea_cfb64);

    return 1;
}
