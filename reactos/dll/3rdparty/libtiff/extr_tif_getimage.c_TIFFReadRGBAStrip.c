
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int TIFF ;


 int TIFFReadRGBAStripExt (int *,int ,int *,int ) ;

int
TIFFReadRGBAStrip(TIFF* tif, uint32 row, uint32 * raster )

{
    return TIFFReadRGBAStripExt(tif, row, raster, 0 );
}
