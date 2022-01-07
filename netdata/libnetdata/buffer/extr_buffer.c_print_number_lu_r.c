
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline char *print_number_lu_r(char *str, unsigned long uvalue) {
    char *wstr = str;


    do *wstr++ = (char)('0' + (uvalue % 10)); while(uvalue /= 10);
    return wstr;
}
