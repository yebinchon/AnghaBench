
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHORT ;
typedef int INT ;


 int TRACE (char*,int *,int *,unsigned int) ;
 scalar_t__ le16 (int ) ;

__attribute__((used)) static void mix16(SHORT *src, INT *dst, unsigned len)
{
    TRACE("%p - %p %d\n", src, dst, len);
    len /= 2;
    while (len--)
    {
        *dst += le16(*src);
        ++dst; ++src;
    }
}
