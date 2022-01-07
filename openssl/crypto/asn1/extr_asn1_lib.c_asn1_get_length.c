
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long LONG_MAX ;

__attribute__((used)) static int asn1_get_length(const unsigned char **pp, int *inf, long *rl,
                           long max)
{
    const unsigned char *p = *pp;
    unsigned long ret = 0;
    int i;

    if (max-- < 1)
        return 0;
    if (*p == 0x80) {
        *inf = 1;
        p++;
    } else {
        *inf = 0;
        i = *p & 0x7f;
        if (*p++ & 0x80) {
            if (max < i + 1)
                return 0;

            while (i > 0 && *p == 0) {
                p++;
                i--;
            }
            if (i > (int)sizeof(long))
                return 0;
            while (i > 0) {
                ret <<= 8;
                ret |= *p++;
                i--;
            }
            if (ret > LONG_MAX)
                return 0;
        } else
            ret = i;
    }
    *pp = p;
    *rl = (long)ret;
    return 1;
}
