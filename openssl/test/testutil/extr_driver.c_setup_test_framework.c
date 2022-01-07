
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_MEM_CHECK_ON ;
 int CRYPTO_mem_ctrl (int ) ;
 int CRYPTO_set_mem_debug (int) ;
 int atoi (char*) ;
 char** copy_argv (int*,char**) ;
 char* getenv (char*) ;
 int level ;
 int opt_init (int,char**,int ) ;
 int set_seed (int) ;
 scalar_t__ should_report_leaks () ;
 int test_get_options () ;
 int win32_utf8argv (int*,char***) ;

int setup_test_framework(int argc, char *argv[])
{
    char *test_seed = getenv("OPENSSL_TEST_RAND_ORDER");
    char *TAP_levels = getenv("HARNESS_OSSL_LEVEL");

    if (TAP_levels != ((void*)0))
        level = 4 * atoi(TAP_levels);
    if (test_seed != ((void*)0))
        set_seed(atoi(test_seed));


    if (should_report_leaks()) {
        CRYPTO_set_mem_debug(1);
        CRYPTO_mem_ctrl(CRYPTO_MEM_CHECK_ON);
    }
    if (!opt_init(argc, argv, test_get_options()))
        return 0;
    return 1;
}
