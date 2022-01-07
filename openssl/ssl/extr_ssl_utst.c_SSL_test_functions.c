
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct openssl_ssl_test_functions {int dummy; } ;


 struct openssl_ssl_test_functions const ssl_test_functions ;

const struct openssl_ssl_test_functions *SSL_test_functions(void)
{
    return &ssl_test_functions;
}
