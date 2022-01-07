
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CRYPTO_mem_leaks_cb (int ,int *) ;
 int EXIT_FAILURE ;
 int openssl_error_cb ;
 int set_test_title (int *) ;
 scalar_t__ should_report_leaks () ;

int pulldown_test_framework(int ret)
{
    set_test_title(((void*)0));

    if (should_report_leaks()
        && CRYPTO_mem_leaks_cb(openssl_error_cb, ((void*)0)) <= 0)
        return EXIT_FAILURE;

    return ret;
}
