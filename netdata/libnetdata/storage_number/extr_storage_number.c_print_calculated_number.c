
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long calculated_number ;


 scalar_t__ calculated_number_llrint (unsigned long long) ;
 double calculated_number_modf (unsigned long long,unsigned long long*) ;
 scalar_t__ likely (int) ;
 char* print_number_llu_r_smart (char*,unsigned long long) ;
 scalar_t__ unlikely (int) ;

int print_calculated_number(char *str, calculated_number value) {

    char integral_str[50], fractional_str[50];

    char *wstr = str;

    if(unlikely(value < 0)) {
        *wstr++ = '-';
        value = -value;
    }

    calculated_number integral, fractional;




    fractional = ((unsigned long long)(value * 10000000ULL) % 10000000ULL);


    unsigned long long integral_int = (unsigned long long)integral;
    unsigned long long fractional_int = (unsigned long long)calculated_number_llrint(fractional);
    if(unlikely(fractional_int >= 10000000)) {
        integral_int += 1;
        fractional_int -= 10000000;
    }



    char *istre;
    if(unlikely(integral_int == 0)) {
        integral_str[0] = '0';
        istre = &integral_str[1];
    }
    else

        istre = print_number_llu_r_smart(integral_str, integral_int);


    istre--;
    while( istre >= integral_str ) *wstr++ = *istre--;

    if(likely(fractional_int != 0)) {

        *wstr++ = '.';


        char *fstre = print_number_llu_r_smart(fractional_str, fractional_int);


        int decimal = 7;
        int len = (int)(fstre - fractional_str);
        while(len < decimal) {
            *wstr++ = '0';
            len++;
        }

        char *begin = fractional_str;
        while(begin < fstre && *begin == '0') begin++;


        fstre--;
        while( fstre >= begin ) *wstr++ = *fstre--;
    }

    *wstr = '\0';

    return (int)(wstr - str);
}
