
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int UCHAR ;
typedef int* PCHAR ;



int ExtractName( PCHAR pBuffer, PCHAR pOutput, USHORT Offset, UCHAR Limit )
{
    int c = 0, d = 0, i = 0, j = 0, k = 0, l = 0, m = 0;

    i = Offset;


    d = Limit;
    if( 0 == Limit ) d = 255;

    while( d > 0 )
    {
        l = pBuffer[i] & 0xFF;
        i += 1;
        if( !m ) c += 1;

        if( 0xC0 == l )
        {
            if( !m ) c += 1;
            m = 1;
            d += (255 - Limit);
            i = pBuffer[i];
        }
        else
        {
            for( j = 0; j < l; j += 1 )
            {
                pOutput[k] = pBuffer[i];

                i += 1;
                if( !m ) c += 1;
                k += 1;
                d -= 1;
            }

            d -= 1;

            if( !pBuffer[i] || (d < 1) ) break;

            pOutput[k] = '.';
            k += 1;
        }
    };

    if( !m )
    {
        if( !Limit ) c += 1;
    }

    pOutput[k] = '\0';

    return c;
}
