
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_13__ {int tif_clientdata; } ;
struct TYPE_12__ {scalar_t__ height; scalar_t__ width; scalar_t__ col_offset; scalar_t__ row_offset; } ;
typedef TYPE_1__ TIFFRGBAImage ;
typedef TYPE_2__ TIFF ;


 int TIFFErrorExt (int ,int ,char*,...) ;
 int TIFFFileName (TYPE_2__*) ;
 int TIFFGetFieldDefaulted (TYPE_2__*,int ,scalar_t__*) ;
 int TIFFIsTiled (TYPE_2__*) ;
 int TIFFRGBAImageBegin (TYPE_1__*,TYPE_2__*,int,char*) ;
 int TIFFRGBAImageEnd (TYPE_1__*) ;
 int TIFFRGBAImageGet (TYPE_1__*,scalar_t__*,scalar_t__,scalar_t__) ;
 int TIFFRGBAImageOK (TYPE_2__*,char*) ;
 int TIFFTAG_TILELENGTH ;
 int TIFFTAG_TILEWIDTH ;
 int _TIFFmemset (scalar_t__*,int ,int) ;
 int memmove (scalar_t__*,scalar_t__*,scalar_t__) ;

int
TIFFReadRGBATileExt(TIFF* tif, uint32 col, uint32 row, uint32 * raster, int stop_on_error )
{
    char emsg[1024] = "";
    TIFFRGBAImage img;
    int ok;
    uint32 tile_xsize, tile_ysize;
    uint32 read_xsize, read_ysize;
    uint32 i_row;






    if( !TIFFIsTiled( tif ) )
    {
  TIFFErrorExt(tif->tif_clientdata, TIFFFileName(tif),
      "Can't use TIFFReadRGBATile() with stripped file.");
  return (0);
    }

    TIFFGetFieldDefaulted(tif, TIFFTAG_TILEWIDTH, &tile_xsize);
    TIFFGetFieldDefaulted(tif, TIFFTAG_TILELENGTH, &tile_ysize);
    if( (col % tile_xsize) != 0 || (row % tile_ysize) != 0 )
    {
  TIFFErrorExt(tif->tif_clientdata, TIFFFileName(tif),
                  "Row/col passed to TIFFReadRGBATile() must be top"
                  "left corner of a tile.");
 return (0);
    }





    if (!TIFFRGBAImageOK(tif, emsg)
 || !TIFFRGBAImageBegin(&img, tif, stop_on_error, emsg)) {
     TIFFErrorExt(tif->tif_clientdata, TIFFFileName(tif), "%s", emsg);
     return( 0 );
    }
    if( row + tile_ysize > img.height )
        read_ysize = img.height - row;
    else
        read_ysize = tile_ysize;

    if( col + tile_xsize > img.width )
        read_xsize = img.width - col;
    else
        read_xsize = tile_xsize;





    img.row_offset = row;
    img.col_offset = col;

    ok = TIFFRGBAImageGet(&img, raster, read_xsize, read_ysize );

    TIFFRGBAImageEnd(&img);
    if( read_xsize == tile_xsize && read_ysize == tile_ysize )
        return( ok );

    for( i_row = 0; i_row < read_ysize; i_row++ ) {
        memmove( raster + (tile_ysize - i_row - 1) * tile_xsize,
                 raster + (read_ysize - i_row - 1) * read_xsize,
                 read_xsize * sizeof(uint32) );
        _TIFFmemset( raster + (tile_ysize - i_row - 1) * tile_xsize+read_xsize,
                     0, sizeof(uint32) * (tile_xsize - read_xsize) );
    }

    for( i_row = read_ysize; i_row < tile_ysize; i_row++ ) {
        _TIFFmemset( raster + (tile_ysize - i_row - 1) * tile_xsize,
                     0, sizeof(uint32) * tile_xsize );
    }

    return (ok);
}
