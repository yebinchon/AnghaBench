
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* data; } ;
struct TYPE_7__ {scalar_t__ pbe_type; int key_len; int key; int salt_len; int salt; int pass_len; int pass; } ;
typedef TYPE_1__ PBE_DATA ;
typedef TYPE_2__ EVP_TEST ;


 scalar_t__ PBE_TYPE_PBKDF2 ;
 scalar_t__ PBE_TYPE_PKCS12 ;
 scalar_t__ PBE_TYPE_SCRYPT ;
 int parse_bin (char const*,int *,int *) ;
 int pbkdf2_test_parse (TYPE_2__*,char const*,char const*) ;
 int pkcs12_test_parse (TYPE_2__*,char const*,char const*) ;
 int scrypt_test_parse (TYPE_2__*,char const*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int pbe_test_parse(EVP_TEST *t,
                          const char *keyword, const char *value)
{
    PBE_DATA *pdata = t->data;

    if (strcmp(keyword, "Password") == 0)
        return parse_bin(value, &pdata->pass, &pdata->pass_len);
    if (strcmp(keyword, "Salt") == 0)
        return parse_bin(value, &pdata->salt, &pdata->salt_len);
    if (strcmp(keyword, "Key") == 0)
        return parse_bin(value, &pdata->key, &pdata->key_len);
    if (pdata->pbe_type == PBE_TYPE_PBKDF2)
        return pbkdf2_test_parse(t, keyword, value);
    else if (pdata->pbe_type == PBE_TYPE_PKCS12)
        return pkcs12_test_parse(t, keyword, value);

    else if (pdata->pbe_type == PBE_TYPE_SCRYPT)
        return scrypt_test_parse(t, keyword, value);

    return 0;
}
