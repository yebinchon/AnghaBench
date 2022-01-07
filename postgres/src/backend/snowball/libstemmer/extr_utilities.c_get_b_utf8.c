
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbol ;



__attribute__((used)) static int get_b_utf8(const symbol * p, int c, int lb, int * slot) {
    int a, b;
    if (c <= lb) return 0;
    b = p[--c];
    if (b < 0x80 || c == lb) {
        *slot = b;
        return 1;
    }
    a = b & 0x3F;
    b = p[--c];
    if (b >= 0xC0 || c == lb) {
        *slot = (b & 0x1F) << 6 | a;
        return 2;
    }
    a |= (b & 0x3F) << 6;
    b = p[--c];
    if (b >= 0xE0 || c == lb) {
        *slot = (b & 0xF) << 12 | a;
        return 3;
    }
    *slot = (p[--c] & 0xE) << 18 | (b & 0x3F) << 12 | a;
    return 4;
}
