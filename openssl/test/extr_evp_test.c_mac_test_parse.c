
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int controls; int output_len; int output; int input_len; int input; int alg; int salt_len; int salt; int custom_len; int custom; int iv_len; int iv; int key_len; int key; } ;
typedef TYPE_1__ MAC_DATA ;
typedef TYPE_2__ EVP_TEST ;


 int OPENSSL_strdup (char const*) ;
 int parse_bin (char const*,int *,int *) ;
 scalar_t__ sk_OPENSSL_STRING_push (int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int mac_test_parse(EVP_TEST *t,
                          const char *keyword, const char *value)
{
    MAC_DATA *mdata = t->data;

    if (strcmp(keyword, "Key") == 0)
        return parse_bin(value, &mdata->key, &mdata->key_len);
    if (strcmp(keyword, "IV") == 0)
        return parse_bin(value, &mdata->iv, &mdata->iv_len);
    if (strcmp(keyword, "Custom") == 0)
        return parse_bin(value, &mdata->custom, &mdata->custom_len);
    if (strcmp(keyword, "Salt") == 0)
        return parse_bin(value, &mdata->salt, &mdata->salt_len);
    if (strcmp(keyword, "Algorithm") == 0) {
        mdata->alg = OPENSSL_strdup(value);
        if (!mdata->alg)
            return -1;
        return 1;
    }
    if (strcmp(keyword, "Input") == 0)
        return parse_bin(value, &mdata->input, &mdata->input_len);
    if (strcmp(keyword, "Output") == 0)
        return parse_bin(value, &mdata->output, &mdata->output_len);
    if (strcmp(keyword, "Ctrl") == 0)
        return sk_OPENSSL_STRING_push(mdata->controls,
                                      OPENSSL_strdup(value)) != 0;
    return 0;
}
