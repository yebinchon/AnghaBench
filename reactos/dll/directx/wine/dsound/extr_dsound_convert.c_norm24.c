
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int BYTE ;


 int TRACE (char*,int*,int*,unsigned int) ;

__attribute__((used)) static void norm24(INT *src, BYTE *dst, unsigned len)
{
    TRACE("%p - %p %d\n", src, dst, len);
    len /= 3;
    while (len--)
    {
        if (*src <= -0x800000)
        {
            dst[0] = 0;
            dst[1] = 0;
            dst[2] = 0x80;
        }
        else if (*src > 0x7fffff)
        {
            dst[0] = 0xff;
            dst[1] = 0xff;
            dst[2] = 0x7f;
        }
        else
        {
            dst[0] = *src;
            dst[1] = *src >> 8;
            dst[2] = *src >> 16;
        }
        ++dst;
        ++src;
    }
}
