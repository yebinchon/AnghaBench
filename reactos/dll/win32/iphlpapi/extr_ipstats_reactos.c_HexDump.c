
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int* PCHAR ;
typedef int DWORD ;


 int fprintf (int ,char*,...) ;
 int stderr ;

VOID HexDump( PCHAR Data, DWORD Len ) {
    int i;

    for( i = 0; i < Len; i++ ) {
        if( !(i & 0xf) ) {
            if( i ) fprintf(stderr,"\n");
            fprintf(stderr,"%08x:", i);
        }
        fprintf( stderr, " %02x", Data[i] & 0xff );
    }
    fprintf(stderr,"\n");
}
