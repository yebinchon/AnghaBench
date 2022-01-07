
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;


 int TRACE (char*,int*,char*,unsigned int) ;

__attribute__((used)) static void norm8(INT *src, signed char *dst, unsigned len)
{
    TRACE("%p - %p %d\n", src, dst, len);
    while (len--)
    {
        *dst = (*src) + 0x80;
        if (*src < -0x80)
            *dst = 0;
        else if (*src > 0x7f)
            *dst = 0xff;
        ++dst;
        ++src;
    }
}
