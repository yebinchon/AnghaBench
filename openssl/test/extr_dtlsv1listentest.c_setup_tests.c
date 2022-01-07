
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 scalar_t__ OSSL_NELEM (int ) ;
 int dtls_listen_test ;
 int testpackets ;

int setup_tests(void)
{

    ADD_ALL_TESTS(dtls_listen_test, (int)OSSL_NELEM(testpackets));

    return 1;
}
