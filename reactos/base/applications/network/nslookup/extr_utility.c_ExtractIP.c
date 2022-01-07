
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int UCHAR ;
typedef char* PCHAR ;


 int sprintf (char*,char*,int) ;
 scalar_t__ strlen (char*) ;

int ExtractIP( PCHAR pBuffer, PCHAR pOutput, USHORT Offset )
{
    int c = 0, l = 0, i = 0, v = 0;

    i = Offset;

    v = (UCHAR)pBuffer[i];
    l += 1;
    i += 1;

    sprintf( &pOutput[c], "%d.", v );
    c += strlen( &pOutput[c] );

    v = (UCHAR)pBuffer[i];
    l += 1;
    i += 1;

    sprintf( &pOutput[c], "%d.", v );
    c += strlen( &pOutput[c] );

    v = (UCHAR)pBuffer[i];
    l += 1;
    i += 1;

    sprintf( &pOutput[c], "%d.", v );
    c += strlen( &pOutput[c] );

    v = (UCHAR)pBuffer[i];
    l += 1;
    i += 1;

    sprintf( &pOutput[c], "%d", v );
    c += strlen( &pOutput[c] );

    pOutput[c] = '\0';

    return l;
}
