
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;


 char* itoa_u64 (scalar_t__,char*) ;

char* itoa_64(int64_t i, char* p) {
    uint64_t u = i;
    if (i < 0) {
        *p++ = '-';
        u = -u;
    }
    return itoa_u64(u, p);
}
