
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int change_decimal_from_locale_to_dot (char*) ;
 int ensure_decimal_point (char*,size_t) ;
 int ensure_minimum_exponent_length (char*,size_t) ;

__attribute__((used)) static char*
fix_ascii_format(char* buf, size_t buflen, int decimal)
{




    change_decimal_from_locale_to_dot(buf);
    ensure_minimum_exponent_length(buf, buflen);

    if (decimal != 0) {
        ensure_decimal_point(buf, buflen);
    }

    return buf;
}
