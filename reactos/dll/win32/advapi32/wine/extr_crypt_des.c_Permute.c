
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GETBIT (unsigned char const*,unsigned char const) ;
 int SETBIT (unsigned char*,int) ;

__attribute__((used)) static void Permute( unsigned char *dst, const unsigned char *src, const unsigned char *map, const int mapsize )
{
    int bitcount, i;

    for (i = 0; i < mapsize; i++)
        dst[i] = 0;

    bitcount = mapsize * 8;

    for (i = 0; i < bitcount; i++)
    {
        if (GETBIT( src, map[i] ))
            SETBIT( dst, i );
    }
}
