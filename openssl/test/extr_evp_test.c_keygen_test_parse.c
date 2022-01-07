
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int genctx; int keyname; } ;
typedef TYPE_1__ KEYGEN_TEST_DATA ;
typedef TYPE_2__ EVP_TEST ;


 int OPENSSL_strdup (char const*) ;
 int TEST_ptr (int ) ;
 int pkey_test_ctrl (TYPE_2__*,int ,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int keygen_test_parse(EVP_TEST *t,
                             const char *keyword, const char *value)
{
    KEYGEN_TEST_DATA *keygen = t->data;

    if (strcmp(keyword, "KeyName") == 0)
        return TEST_ptr(keygen->keyname = OPENSSL_strdup(value));
    if (strcmp(keyword, "Ctrl") == 0)
        return pkey_test_ctrl(t, keygen->genctx, value);
    return 0;
}
