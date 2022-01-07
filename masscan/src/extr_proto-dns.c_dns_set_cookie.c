
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



unsigned
dns_set_cookie(unsigned char *px, size_t length, uint64_t cookie)
{
    if (length > 2) {
        px[0] = (unsigned char)(cookie >> 8);
        px[1] = (unsigned char)(cookie >> 0);
        return cookie & 0xFFFF;
    } else
        return 0;
}
