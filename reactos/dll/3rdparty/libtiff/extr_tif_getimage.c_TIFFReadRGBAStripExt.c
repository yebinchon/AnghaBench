
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_13__ {int tif_clientdata; } ;
struct TYPE_12__ {scalar_t__ height; int width; scalar_t__ col_offset; scalar_t__ row_offset; } ;
typedef TYPE_1__ TIFFRGBAImage ;
typedef TYPE_2__ TIFF ;


 int TIFFErrorExt (int ,int ,char*,...) ;
 int TIFFFileName (TYPE_2__*) ;
 int TIFFGetFieldDefaulted (TYPE_2__*,int ,scalar_t__*) ;
 scalar_t__ TIFFIsTiled (TYPE_2__*) ;
 scalar_t__ TIFFRGBAImageBegin (TYPE_1__*,TYPE_2__*,int,char*) ;
 int TIFFRGBAImageEnd (TYPE_1__*) ;
 int TIFFRGBAImageGet (TYPE_1__*,scalar_t__*,int ,scalar_t__) ;
 scalar_t__ TIFFRGBAImageOK (TYPE_2__*,char*) ;
 int TIFFTAG_ROWSPERSTRIP ;

int
TIFFReadRGBAStripExt(TIFF* tif, uint32 row, uint32 * raster, int stop_on_error)

{
    char emsg[1024] = "";
    TIFFRGBAImage img;
    int ok;
    uint32 rowsperstrip, rows_to_read;

    if( TIFFIsTiled( tif ) )
    {
  TIFFErrorExt(tif->tif_clientdata, TIFFFileName(tif),
                  "Can't use TIFFReadRGBAStrip() with tiled file.");
 return (0);
    }

    TIFFGetFieldDefaulted(tif, TIFFTAG_ROWSPERSTRIP, &rowsperstrip);
    if( (row % rowsperstrip) != 0 )
    {
  TIFFErrorExt(tif->tif_clientdata, TIFFFileName(tif),
    "Row passed to TIFFReadRGBAStrip() must be first in a strip.");
  return (0);
    }

    if (TIFFRGBAImageOK(tif, emsg) && TIFFRGBAImageBegin(&img, tif, stop_on_error, emsg)) {

        img.row_offset = row;
        img.col_offset = 0;

        if( row + rowsperstrip > img.height )
            rows_to_read = img.height - row;
        else
            rows_to_read = rowsperstrip;

 ok = TIFFRGBAImageGet(&img, raster, img.width, rows_to_read );

 TIFFRGBAImageEnd(&img);
    } else {
  TIFFErrorExt(tif->tif_clientdata, TIFFFileName(tif), "%s", emsg);
  ok = 0;
    }

    return (ok);
}
