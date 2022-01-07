
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
 int ERR_raise_data (int ,int ,char*,...) ;
 int PROPERTY_TYPE_STRING ;
 int PROP_R_NO_MATCHING_STRING_DELIMETER ;
 int PROP_R_STRING_TOO_LONG ;
 int ossl_property_value (int *,char*,int const) ;
 char* skip_space (char const*) ;

__attribute__((used)) static int parse_string(OPENSSL_CTX *ctx, const char *t[], char delim,
                        PROPERTY_DEFINITION *res, const int create)
{
    char v[1000];
    const char *s = *t;
    size_t i = 0;
    int err = 0;

    while (*s != '\0' && *s != delim) {
        if (i < sizeof(v) - 1)
            v[i++] = *s;
        else
            err = 1;
        s++;
    }
    if (*s == '\0') {
        ERR_raise_data(ERR_LIB_PROP, PROP_R_NO_MATCHING_STRING_DELIMETER,
                       "HERE-->%c%s", delim, *t);
        return 0;
    }
    v[i] = '\0';
    if (err) {
        ERR_raise_data(ERR_LIB_PROP, PROP_R_STRING_TOO_LONG, "HERE-->%s", *t);
    } else {
        res->v.str_val = ossl_property_value(ctx, v, create);
    }
    *t = skip_space(s + 1);
    res->type = PROPERTY_TYPE_STRING;
    return !err;
}
