
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;


 scalar_t__ TEST_ptr (int *) ;
 int expected_greeting1 (char const*) ;
 int * ossl_provider_new (int *,char const*,int *,int ) ;
 scalar_t__ test_provider (int *,int ) ;

__attribute__((used)) static int test_loaded_provider(void)
{
    const char *name = "p_test";
    OSSL_PROVIDER *prov = ((void*)0);

    return
        TEST_ptr(prov = ossl_provider_new(((void*)0), name, ((void*)0), 0))
        && test_provider(prov, expected_greeting1(name));
}
