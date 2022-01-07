
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLRBIT (unsigned char*,int) ;
 scalar_t__ GETBIT (unsigned char*,int) ;
 int SETBIT (unsigned char*,int) ;

__attribute__((used)) static void KeyShiftRight( unsigned char *key, const int numbits )
{
    int i;
    unsigned char keep = key[6];

    for (i = 0; i < numbits; i++)
    {
        int j;

        for (j = 6; j >= 0; j--)
        {
            if (j!=6 && (key[j] & 0x01))
                key[j+1] |= 0x80;
            key[j] >>= 1;
        }

        if (GETBIT( key, 28 ))
        {
            CLRBIT( key, 28 );
            SETBIT( key, 0 );
        }

        if (keep & 0x01)
            SETBIT( key, 28 );

        keep >>= 1;
    }
}
