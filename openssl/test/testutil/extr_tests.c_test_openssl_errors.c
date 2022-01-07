
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_clear_error () ;
 int ERR_print_errors_cb (int ,int *) ;
 int openssl_error_cb ;

void test_openssl_errors(void)
{
    ERR_print_errors_cb(openssl_error_cb, ((void*)0));
    ERR_clear_error();
}
