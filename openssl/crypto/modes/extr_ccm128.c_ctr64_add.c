
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void ctr64_add(unsigned char *counter, size_t inc)
{
    size_t n = 8, val = 0;

    counter += 8;
    do {
        --n;
        val += counter[n] + (inc & 0xff);
        counter[n] = (unsigned char)val;
        val >>= 8;
        inc >>= 8;
    } while (n && (inc || val));
}
