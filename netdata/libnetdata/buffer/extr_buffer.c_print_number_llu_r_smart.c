
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* print_number_llu_r (char*,unsigned long long) ;
 char* print_number_lu_r (char*,unsigned long long) ;

inline char *print_number_llu_r_smart(char *str, unsigned long long uvalue) {






    do *str++ = (char)('0' + (uvalue % 10)); while(uvalue /= 10);


    return str;
}
