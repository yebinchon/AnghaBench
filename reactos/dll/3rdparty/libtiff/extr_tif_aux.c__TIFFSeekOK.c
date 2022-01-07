
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int toff_t ;
typedef int TIFF ;


 int SEEK_SET ;
 int TIFFSeekFile (int *,int,int ) ;

int _TIFFSeekOK(TIFF* tif, toff_t off)
{


    return off <= (~(uint64)0)/2 && TIFFSeekFile(tif,off,SEEK_SET)==off;
}
