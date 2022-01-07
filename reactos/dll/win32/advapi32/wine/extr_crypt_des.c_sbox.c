
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GETBIT (unsigned char const*,int) ;
 int** SBox ;

__attribute__((used)) static void sbox( unsigned char *dst, const unsigned char *src )
{
    int i;

    for (i = 0; i < 4; i++)
        dst[i] = 0;

    for (i = 0; i < 8; i++)
    {
        int j, Snum, bitnum;

        for (Snum = j = 0, bitnum = (i * 6); j < 6; j++, bitnum++)
        {
            Snum <<= 1;
            Snum |= GETBIT( src, bitnum );
        }

        if (0 == (i%2))
            dst[i/2] |= ((SBox[i][Snum]) << 4);
        else
            dst[i/2] |= SBox[i][Snum];
    }
}
