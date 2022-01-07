
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssl_test_result_t ;


 int OSSL_NELEM (int ) ;
 char const* enum_name (int ,int ,int ) ;
 int ssl_test_results ;

const char *ssl_test_result_name(ssl_test_result_t result)
{
    return enum_name(ssl_test_results, OSSL_NELEM(ssl_test_results), result);
}
