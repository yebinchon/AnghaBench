
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGLONG ;
typedef int INT ;


 int TRACE (char*,int *,int *,unsigned int) ;
 scalar_t__ le32 (int ) ;

__attribute__((used)) static void mix32(INT *src, LONGLONG *dst, unsigned len)
{
    TRACE("%p - %p %d\n", src, dst, len);
    len /= 4;
    while (len--)
        *(dst++) += le32(*(src++));
}
