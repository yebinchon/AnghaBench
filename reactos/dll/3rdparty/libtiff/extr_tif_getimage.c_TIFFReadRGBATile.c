
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int TIFF ;


 int TIFFReadRGBATileExt (int *,int ,int ,int *,int ) ;

int
TIFFReadRGBATile(TIFF* tif, uint32 col, uint32 row, uint32 * raster)

{
    return TIFFReadRGBATileExt(tif, col, row, raster, 0 );
}
