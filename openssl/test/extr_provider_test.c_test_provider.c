
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int expected_greeting ;
struct TYPE_3__ {char* data; int data_size; } ;
typedef char const OSSL_PROVIDER ;


 int BIO_snprintf (char*,int,char*,int ,char const*) ;
 int OPENSSL_VERSION_STR ;
 int OSSL_PROVIDER_get_params (char const*,TYPE_1__*) ;
 char* OSSL_PROVIDER_load (int *,char const*) ;
 int OSSL_PROVIDER_unload (char const*) ;
 scalar_t__ TEST_ptr (char const*) ;
 scalar_t__ TEST_size_t_gt (int ,int ) ;
 scalar_t__ TEST_str_eq (char const*,char*) ;
 scalar_t__ TEST_true (int ) ;
 TYPE_1__* greeting_request ;

__attribute__((used)) static int test_provider(const char *name)
{
    OSSL_PROVIDER *prov = ((void*)0);
    const char *greeting = ((void*)0);
    char expected_greeting[256];

    BIO_snprintf(expected_greeting, sizeof(expected_greeting),
                 "Hello OpenSSL %.20s, greetings from %s!",
                 OPENSSL_VERSION_STR, name);

    return
        TEST_ptr(prov = OSSL_PROVIDER_load(((void*)0), name))
        && TEST_true(OSSL_PROVIDER_get_params(prov, greeting_request))
        && TEST_ptr(greeting = greeting_request[0].data)
        && TEST_size_t_gt(greeting_request[0].data_size, 0)
        && TEST_str_eq(greeting, expected_greeting)
        && TEST_true(OSSL_PROVIDER_unload(prov));
}
