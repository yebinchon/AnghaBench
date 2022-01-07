
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int digits (int,int,int*,char**,int) ;
 char* itoa (int,char*,int,int) ;

char* itoa_u32(uint32_t u, char* p) {
    int d = 0,n;
         if (u >=100000000) n = digits(u, 100000000, &d, &p, 10);
    else if (u < 100) n = digits(u, 1, &d, &p, 2);
    else if (u < 10000) n = digits(u, 100, &d, &p, 4);
    else if (u < 1000000) n = digits(u, 10000, &d, &p, 6);
    else n = digits(u, 1000000, &d, &p, 8);
    return itoa( u, p, d, n );
}
