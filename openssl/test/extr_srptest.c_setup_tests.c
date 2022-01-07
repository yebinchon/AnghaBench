
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int printf (char*) ;
 int run_srp_kat ;
 int run_srp_tests ;

int setup_tests(void)
{



    ADD_TEST(run_srp_tests);
    ADD_TEST(run_srp_kat);

    return 1;
}
