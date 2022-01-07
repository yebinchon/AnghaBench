
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* print_number_lu_r (char*,unsigned long long) ;

inline char *print_number_llu_r(char *str, unsigned long long uvalue) {
    char *wstr = str;


    do *wstr++ = (char)('0' + (uvalue % 10)); while((uvalue /= 10) && uvalue > (unsigned long long)0xffffffff);
    if(uvalue) return print_number_lu_r(wstr, uvalue);
    return wstr;
}
