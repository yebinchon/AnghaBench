
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef scalar_t__ BYTE ;


 int TRACE (char*,char*,int *,unsigned int) ;

__attribute__((used)) static void mix8(signed char *src, INT *dst, unsigned len)
{
    TRACE("%p - %p %d\n", src, dst, len);
    while (len--)

        *(dst++) += (signed char)((BYTE)*(src++) - (BYTE)0x80);
}
