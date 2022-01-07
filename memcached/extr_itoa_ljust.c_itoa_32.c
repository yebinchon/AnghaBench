
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;


 char* itoa_u32 (scalar_t__,char*) ;

char* itoa_32(int32_t i, char* p) {
    uint32_t u = i;
    if (i < 0) {
        *p++ = '-';
        u = -u;
    }
    return itoa_u32(u, p);
}
