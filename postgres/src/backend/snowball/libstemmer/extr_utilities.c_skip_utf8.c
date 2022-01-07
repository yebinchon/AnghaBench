
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol ;



extern int skip_utf8(const symbol * p, int c, int lb, int l, int n) {
    int b;
    if (n >= 0) {
        for (; n > 0; n--) {
            if (c >= l) return -1;
            b = p[c++];
            if (b >= 0xC0) {
                while (c < l) {
                    b = p[c];
                    if (b >= 0xC0 || b < 0x80) break;

                    c++;
                }
            }
        }
    } else {
        for (; n < 0; n++) {
            if (c <= lb) return -1;
            b = p[--c];
            if (b >= 0x80) {
                while (c > lb) {
                    b = p[c];
                    if (b >= 0xC0) break;
                    c--;
                }
            }
        }
    }
    return c;
}
