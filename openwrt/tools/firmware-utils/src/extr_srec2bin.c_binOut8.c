
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bit8u ;
typedef int bit32u ;


 int AddressCurrent ;
 int RecLength ;
 int dumpfTell (char*,int ) ;
 int fOut ;
 int fwrite (int*,int,int,int ) ;
 int printf (char*,int,int) ;

void binOut8 ( bit8u Data )
{
    int n;
    dumpfTell("B4Data" , (bit32u) (Data & 0xFF) );
    n = fwrite( &Data, sizeof(bit8u), 1, fOut);
    if (n != 1)
        printf("Error in writing %X for Address 0x%8X\n", Data, AddressCurrent);
    RecLength += 1;
}
