
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
unicodize(char *dst, const char *src)
{

    int i = 0;
    do
    {
        dst[i++] = *src;
        dst[i++] = 0;
    } while (*src++);

    return i;
}
