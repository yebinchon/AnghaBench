
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGLONG ;
typedef int INT ;


 int TRACE (char*,int*,int *,unsigned int) ;
 int le32 (int) ;

__attribute__((used)) static void norm32(LONGLONG *src, INT *dst, unsigned len)
{
    TRACE("%p - %p %d\n", src, dst, len);
    len /= 4;
    while (len--)
    {
        *dst = le32(*src);
        if (*src <= -(LONGLONG)0x80000000)
            *dst = le32(0x80000000);
        else if (*src > 0x7fffffff)
            *dst = le32(0x7fffffff);
        ++dst;
        ++src;
    }
}
