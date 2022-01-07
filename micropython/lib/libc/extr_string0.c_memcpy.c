
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 scalar_t__ likely (int) ;

void *memcpy(void *dst, const void *src, size_t n) {
    if (likely(!(((uintptr_t)dst) & 3) && !(((uintptr_t)src) & 3))) {

        uint32_t *d = dst;
        const uint32_t *s = src;


        for (size_t i = (n >> 2); i; i--) {
            *d++ = *s++;
        }

        if (n & 2) {

            *(uint16_t*)d = *(const uint16_t*)s;
            d = (uint32_t*)((uint16_t*)d + 1);
            s = (const uint32_t*)((const uint16_t*)s + 1);
        }

        if (n & 1) {

            *((uint8_t*)d) = *((const uint8_t*)s);
        }
    } else {

        uint8_t *d = dst;
        const uint8_t *s = src;

        for (; n; n--) {
            *d++ = *s++;
        }
    }

    return dst;
}
