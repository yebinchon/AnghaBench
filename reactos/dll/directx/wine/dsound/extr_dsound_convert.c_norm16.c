
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHORT ;
typedef int INT ;


 int TRACE (char*,int*,int *,unsigned int) ;
 int le16 (int) ;

__attribute__((used)) static void norm16(INT *src, SHORT *dst, unsigned len)
{
    TRACE("%p - %p %d\n", src, dst, len);
    len /= 2;
    while (len--)
    {
        *dst = le16(*src);
        if (*src <= -0x8000)
            *dst = le16(0x8000);
        else if (*src > 0x7fff)
            *dst = le16(0x7fff);
        ++dst;
        ++src;
    }
}
