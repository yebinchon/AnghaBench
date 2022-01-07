
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int rng_get () ;

int mbedtls_hardware_poll(void *data, unsigned char *output, size_t len, size_t *olen) {
    uint32_t val;
    int n = 0;
    *olen = len;
    while (len--) {
        if (!n) {
            val = rng_get();
            n = 4;
        }
        *output++ = val;
        val >>= 8;
        --n;
    }
    return 0;
}
