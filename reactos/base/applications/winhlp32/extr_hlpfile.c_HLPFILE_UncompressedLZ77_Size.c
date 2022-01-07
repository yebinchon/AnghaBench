
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int BYTE ;


 int GET_USHORT (int const*,int ) ;

__attribute__((used)) static INT HLPFILE_UncompressedLZ77_Size(const BYTE *ptr, const BYTE *end)
{
    int i, newsize = 0;

    while (ptr < end)
    {
        int mask = *ptr++;
        for (i = 0; i < 8 && ptr < end; i++, mask >>= 1)
 {
            if (mask & 1)
     {
                int code = GET_USHORT(ptr, 0);
                int len = 3 + (code >> 12);
                newsize += len;
                ptr += 2;
     }
            else newsize++, ptr++;
 }
    }

    return newsize;
}
