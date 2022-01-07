
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSSL_PROVIDER_add_builtin (int *,char const*,int ) ;
 int PROVIDER_INIT_FUNCTION_NAME ;
 scalar_t__ TEST_true (int ) ;
 scalar_t__ test_provider (char const*) ;

__attribute__((used)) static int test_builtin_provider(void)
{
    const char *name = "p_test_builtin";

    return
        TEST_true(OSSL_PROVIDER_add_builtin(((void*)0), name,
                                            PROVIDER_INIT_FUNCTION_NAME))
        && test_provider(name);
}
