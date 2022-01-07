
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



int memcmp(const void *s1, const void *s2, size_t n) {
    const uint8_t *s1_8 = s1;
    const uint8_t *s2_8 = s2;
    while (n--) {
        char c1 = *s1_8++;
        char c2 = *s2_8++;
        if (c1 < c2) return -1;
        else if (c1 > c2) return 1;
    }
    return 0;
}
