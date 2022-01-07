
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int read_ledword(const unsigned char **in)
{
    const unsigned char *p = *in;
    unsigned int ret;
    ret = *p++;
    ret |= (*p++ << 8);
    ret |= (*p++ << 16);
    ret |= (*p++ << 24);
    *in = p;
    return ret;
}
