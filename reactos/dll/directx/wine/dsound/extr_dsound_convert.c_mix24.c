
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int DWORD ;
typedef int BYTE ;


 int TRACE (char*,int*,int *,unsigned int) ;

__attribute__((used)) static void mix24(BYTE *src, INT *dst, unsigned len)
{
    TRACE("%p - %p %d\n", src, dst, len);
    len /= 3;
    while (len--)
    {
        DWORD field;
        field = ((DWORD)src[2] << 16) + ((DWORD)src[1] << 8) + (DWORD)src[0];
        if (src[2] & 0x80)
            field |= 0xFF000000U;
        *(dst++) += field;
        ++src;
    }
}
