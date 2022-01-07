
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OSSL_NELEM (scalar_t__*) ;
 int opt_num_rest () ;
 char** opt_rest () ;
 int test_printf_stderr (char*,int,...) ;
 scalar_t__* used ;

void opt_check_usage(void)
{
    int i;
    char **argv = opt_rest();
    int n, arg_count = opt_num_rest();

    if (arg_count > (int)OSSL_NELEM(used))
        n = (int)OSSL_NELEM(used);
    else
        n = arg_count;
    for (i = 0; i < n; i++) {
        if (used[i] == 0)
            test_printf_stderr("Warning ignored command-line argument %d: %s\n",
                               i, argv[i]);
    }
    if (i < arg_count)
        test_printf_stderr("Warning arguments %d and later unchecked\n", i);
}
