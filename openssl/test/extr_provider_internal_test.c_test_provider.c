
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* data; int data_size; } ;
typedef int OSSL_PROVIDER ;


 int TEST_info (char*,char const*) ;
 scalar_t__ TEST_ptr (char const*) ;
 scalar_t__ TEST_size_t_gt (int ,int ) ;
 scalar_t__ TEST_str_eq (char const*,char const*) ;
 scalar_t__ TEST_true (int ) ;
 TYPE_1__* greeting_request ;
 int ossl_provider_activate (int *) ;
 int ossl_provider_free (int *) ;
 int ossl_provider_get_params (int *,TYPE_1__*) ;

__attribute__((used)) static int test_provider(OSSL_PROVIDER *prov, const char *expected_greeting)
{
    const char *greeting = ((void*)0);
    int ret = 0;

    ret =
        TEST_true(ossl_provider_activate(prov))
        && TEST_true(ossl_provider_get_params(prov, greeting_request))
        && TEST_ptr(greeting = greeting_request[0].data)
        && TEST_size_t_gt(greeting_request[0].data_size, 0)
        && TEST_str_eq(greeting, expected_greeting);

    TEST_info("Got this greeting: %s\n", greeting);
    ossl_provider_free(prov);
    return ret;
}
