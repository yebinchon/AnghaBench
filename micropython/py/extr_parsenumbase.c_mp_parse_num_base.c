
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unichar ;
typedef int byte ;



size_t mp_parse_num_base(const char *str, size_t len, int *base) {
    const byte *p = (const byte*)str;
    if (len <= 1) {
        goto no_prefix;
    }
    unichar c = *(p++);
    if ((*base == 0 || *base == 16) && c == '0') {
        c = *(p++);
        if ((c | 32) == 'x') {
            *base = 16;
        } else if (*base == 0 && (c | 32) == 'o') {
            *base = 8;
        } else if (*base == 0 && (c | 32) == 'b') {
            *base = 2;
        } else {
            if (*base == 0) {
                *base = 10;
            }
            p -= 2;
        }
    } else if (*base == 8 && c == '0') {
        c = *(p++);
        if ((c | 32) != 'o') {
            p -= 2;
        }
    } else if (*base == 2 && c == '0') {
        c = *(p++);
        if ((c | 32) != 'b') {
            p -= 2;
        }
    } else {
        p--;
    no_prefix:
        if (*base == 0) {
            *base = 10;
        }
    }
    return p - (const byte*)str;
}
