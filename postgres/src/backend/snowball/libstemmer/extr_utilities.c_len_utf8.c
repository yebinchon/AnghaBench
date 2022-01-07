
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol ;


 int SIZE (int const*) ;

extern int len_utf8(const symbol * p) {
    int size = SIZE(p);
    int len = 0;
    while (size--) {
        symbol b = *p++;
        if (b >= 0xC0 || b < 0x80) ++len;
    }
    return len;
}
