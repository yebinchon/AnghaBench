
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int cleanup_tests () ;
 int global_init () ;
 int opt_check_usage () ;
 int opt_help (int ) ;
 int pulldown_test_framework (int) ;
 int run_tests (char*) ;
 int setup_test_framework (int,char**) ;
 scalar_t__ setup_tests () ;
 int test_close_streams () ;
 int test_get_options () ;
 int test_open_streams () ;
 int test_printf_stderr (char*) ;

int main(int argc, char *argv[])
{
    int ret = EXIT_FAILURE;

    test_open_streams();

    if (!global_init()) {
        test_printf_stderr("Global init failed - aborting\n");
        return ret;
    }

    if (!setup_test_framework(argc, argv))
        goto end;

    if (setup_tests()) {
        ret = run_tests(argv[0]);
        cleanup_tests();
        opt_check_usage();
    } else {
        opt_help(test_get_options());
    }
end:
    ret = pulldown_test_framework(ret);
    test_close_streams();
    return ret;
}
