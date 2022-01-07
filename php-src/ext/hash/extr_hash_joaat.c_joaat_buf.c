
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint32_t ;



__attribute__((used)) static uint32_t
joaat_buf(void *buf, size_t len, uint32_t hval)
{
    size_t i;
    unsigned char *input = (unsigned char *)buf;

    for (i = 0; i < len; i++) {
        hval += input[i];
        hval += (hval << 10);
        hval ^= (hval >> 6);
    }

    hval += (hval << 3);
    hval ^= (hval >> 11);
    hval += (hval << 15);

    return hval;
}
