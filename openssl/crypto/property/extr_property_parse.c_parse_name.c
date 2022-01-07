
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int OSSL_PROPERTY_IDX ;
typedef int OPENSSL_CTX ;


 int ERR_LIB_PROP ;
 int ERR_raise_data (int ,int ,char*,char const*) ;
 int PROP_R_NAME_TOO_LONG ;
 int PROP_R_NOT_AN_IDENTIFIER ;
 scalar_t__ ossl_isalnum (char const) ;
 int ossl_isalpha (char const) ;
 int ossl_property_name (int *,char*,int) ;
 char ossl_tolower (char const) ;
 char* skip_space (char const*) ;

__attribute__((used)) static int parse_name(OPENSSL_CTX *ctx, const char *t[], int create,
                      OSSL_PROPERTY_IDX *idx)
{
    char name[100];
    int err = 0;
    size_t i = 0;
    const char *s = *t;
    int user_name = 0;

    for (;;) {
        if (!ossl_isalpha(*s)) {
            ERR_raise_data(ERR_LIB_PROP, PROP_R_NOT_AN_IDENTIFIER,
                           "HERE-->%s", *t);
            return 0;
        }
        do {
            if (i < sizeof(name) - 1)
                name[i++] = ossl_tolower(*s);
            else
                err = 1;
        } while (*++s == '_' || ossl_isalnum(*s));
        if (*s != '.')
            break;
        user_name = 1;
        if (i < sizeof(name) - 1)
            name[i++] = *s;
        else
            err = 1;
        s++;
    }
    name[i] = '\0';
    if (err) {
        ERR_raise_data(ERR_LIB_PROP, PROP_R_NAME_TOO_LONG, "HERE-->%s", *t);
        return 0;
    }
    *t = skip_space(s);
    *idx = ossl_property_name(ctx, name, user_name && create);
    return 1;
}
