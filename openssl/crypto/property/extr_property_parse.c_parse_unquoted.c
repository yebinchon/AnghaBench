
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int v ;
struct TYPE_4__ {int str_val; } ;
struct TYPE_5__ {int type; TYPE_1__ v; } ;
typedef TYPE_2__ PROPERTY_DEFINITION ;
typedef int OPENSSL_CTX ;


 int ERR_LIB_PROP ;
 int ERR_raise_data (int ,int ,char*,char const*) ;
 int PROPERTY_TYPE_STRING ;
 int PROP_R_NOT_AN_ASCII_CHARACTER ;
 int PROP_R_STRING_TOO_LONG ;
 scalar_t__ ossl_isprint (char const) ;
 int ossl_isspace (char const) ;
 int ossl_property_value (int *,char*,int const) ;
 char ossl_tolower (char const) ;
 char* skip_space (char const*) ;

__attribute__((used)) static int parse_unquoted(OPENSSL_CTX *ctx, const char *t[],
                          PROPERTY_DEFINITION *res, const int create)
{
    char v[1000];
    const char *s = *t;
    size_t i = 0;
    int err = 0;

    if (*s == '\0' || *s == ',')
        return 0;
    while (ossl_isprint(*s) && !ossl_isspace(*s) && *s != ',') {
        if (i < sizeof(v) - 1)
            v[i++] = ossl_tolower(*s);
        else
            err = 1;
        s++;
    }
    if (!ossl_isspace(*s) && *s != '\0' && *s != ',') {
        ERR_raise_data(ERR_LIB_PROP, PROP_R_NOT_AN_ASCII_CHARACTER,
                       "HERE-->%s", s);
        return 0;
    }
    v[i] = 0;
    if (err) {
        ERR_raise_data(ERR_LIB_PROP, PROP_R_STRING_TOO_LONG, "HERE-->%s", *t);
    } else {
        res->v.str_val = ossl_property_value(ctx, v, create);
    }
    *t = skip_space(s);
    res->type = PROPERTY_TYPE_STRING;
    return !err;
}
