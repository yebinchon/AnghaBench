
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool get_bit(const unsigned char *bits, int x, int y, int width)
{
    return bits[(y * ((width + 7) >> 3)) + (x >> 3)] & 1 << (x & 7);
}
