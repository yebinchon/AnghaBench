
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int int_val; } ;
struct TYPE_5__ {TYPE_1__ v; int type; } ;
typedef TYPE_2__ PROPERTY_DEFINITION ;


 int ERR_LIB_PROP ;
 int ERR_raise_data (int ,int ,char*,char const*) ;
 int PROPERTY_TYPE_NUMBER ;
 int PROP_R_NOT_AN_HEXADECIMAL_DIGIT ;
 scalar_t__ ossl_isdigit (char const) ;
 int ossl_isspace (char const) ;
 scalar_t__ ossl_isxdigit (char const) ;
 char ossl_tolower (char const) ;
 char* skip_space (char const*) ;

__attribute__((used)) static int parse_hex(const char *t[], PROPERTY_DEFINITION *res)
{
    const char *s = *t;
    int64_t v = 0;

    if (!ossl_isxdigit(*s))
        return 0;
    do {
        v <<= 4;
        if (ossl_isdigit(*s))
            v += *s - '0';
        else
            v += ossl_tolower(*s) - 'a';
    } while (ossl_isxdigit(*++s));
    if (!ossl_isspace(*s) && *s != '\0' && *s != ',') {
        ERR_raise_data(ERR_LIB_PROP, PROP_R_NOT_AN_HEXADECIMAL_DIGIT,
                       "HERE-->%s", *t);
        return 0;
    }
    *t = skip_space(s);
    res->type = PROPERTY_TYPE_NUMBER;
    res->v.int_val = v;
    return 1;
}
