
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int int_val; } ;
struct TYPE_10__ {TYPE_1__ v; } ;
typedef TYPE_2__ PROPERTY_DEFINITION ;
typedef int OPENSSL_CTX ;


 scalar_t__ ossl_isalpha (char const) ;
 scalar_t__ ossl_isdigit (char const) ;
 int parse_hex (char const**,TYPE_2__*) ;
 int parse_number (char const**,TYPE_2__*) ;
 int parse_oct (char const**,TYPE_2__*) ;
 int parse_string (int *,char const**,char const,TYPE_2__*,int) ;
 int parse_unquoted (int *,char const**,TYPE_2__*,int) ;

__attribute__((used)) static int parse_value(OPENSSL_CTX *ctx, const char *t[],
                       PROPERTY_DEFINITION *res, int create)
{
    const char *s = *t;
    int r = 0;

    if (*s == '"' || *s == '\'') {
        s++;
        r = parse_string(ctx, &s, s[-1], res, create);
    } else if (*s == '+') {
        s++;
        r = parse_number(&s, res);
    } else if (*s == '-') {
        s++;
        r = parse_number(&s, res);
        res->v.int_val = -res->v.int_val;
    } else if (*s == '0' && s[1] == 'x') {
        s += 2;
        r = parse_hex(&s, res);
    } else if (*s == '0' && ossl_isdigit(s[1])) {
        s++;
        r = parse_oct(&s, res);
    } else if (ossl_isdigit(*s)) {
        return parse_number(t, res);
    } else if (ossl_isalpha(*s))
        return parse_unquoted(ctx, t, res, create);
    if (r)
        *t = s;
    return r;
}
