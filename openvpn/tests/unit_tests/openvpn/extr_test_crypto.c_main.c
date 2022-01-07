
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CMUnitTest {int dummy; } ;


 int EVP_cleanup () ;
 int OpenSSL_add_all_algorithms () ;
 int cmocka_run_group_tests_name (char*,struct CMUnitTest const*,int *,int *) ;
 struct CMUnitTest const cmocka_unit_test (int ) ;
 int crypto_pem_encode_decode_loopback ;

int
main(void) {
    const struct CMUnitTest tests[] = {
        cmocka_unit_test(crypto_pem_encode_decode_loopback),
    };





    int ret = cmocka_run_group_tests_name("crypto tests", tests, ((void*)0), ((void*)0));





    return ret;
}
