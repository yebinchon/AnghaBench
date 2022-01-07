
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 char* out1 (int,char*) ;

__attribute__((used)) static inline int digits( uint32_t u, unsigned k, int* d, char** p, int n ) {
    if (u < k*10) {
        *d = u / k;
        *p = out1('0'+*d, *p);
        --n;
    }
    return n;
}
