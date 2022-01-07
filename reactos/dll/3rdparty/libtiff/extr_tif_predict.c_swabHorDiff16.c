
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint16 ;
typedef int tmsize_t ;
typedef int TIFF ;


 int TIFFSwabArrayOfShort (int *,int) ;
 int horDiff16 (int *,int *,int) ;

__attribute__((used)) static int
swabHorDiff16(TIFF* tif, uint8* cp0, tmsize_t cc)
{
    uint16* wp = (uint16*) cp0;
    tmsize_t wc = cc / 2;

    if( !horDiff16(tif, cp0, cc) )
        return 0;

    TIFFSwabArrayOfShort(wp, wc);
    return 1;
}
