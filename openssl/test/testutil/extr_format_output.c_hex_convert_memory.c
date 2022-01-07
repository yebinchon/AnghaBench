
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void hex_convert_memory(const unsigned char *m, size_t n, char *b,
                               size_t width)
{
    size_t i;

    for (i = 0; i < n; i++) {
        const unsigned char c = *m++;

        *b++ = "0123456789abcdef"[c >> 4];
        *b++ = "0123456789abcdef"[c & 15];
        if (i % width == width - 1 && i != n - 1)
            *b++ = ' ';
    }
    *b = '\0';
}
