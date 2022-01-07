
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;


 scalar_t__ TEST_ptr (int *) ;
 int * ossl_provider_find (int *,char const*,int ) ;
 scalar_t__ test_provider (int *,char const*) ;

__attribute__((used)) static int test_configured_provider(void)
{
    const char *name = "p_test_configured";
    OSSL_PROVIDER *prov = ((void*)0);

    const char *expected_greeting =
        "Hello OpenSSL, greetings from Test Provider";

    return
        TEST_ptr(prov = ossl_provider_find(((void*)0), name, 0))
        && test_provider(prov, expected_greeting);
}
