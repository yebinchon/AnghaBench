
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BOOL ;



__attribute__((used)) static inline long get_addr(BOOL inverted, unsigned long x, unsigned long y,
                       int frm_stride, int bpp, unsigned int out_height)
{

    if (inverted)
        return y * frm_stride + x * bpp;
    else
        return (out_height - 1 - y) * frm_stride + x * bpp;
}
