
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int uint32 ;
typedef int tmsize_t ;
typedef int TIFF ;


 int TIFFSwabArrayOfLong (int *,int) ;
 int horDiff32 (int *,int *,int) ;

__attribute__((used)) static int
swabHorDiff32(TIFF* tif, uint8* cp0, tmsize_t cc)
{
    uint32* wp = (uint32*) cp0;
    tmsize_t wc = cc / 4;

    if( !horDiff32(tif, cp0, cc) )
        return 0;

    TIFFSwabArrayOfLong(wp, wc);
    return 1;
}
