#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
struct TYPE_13__ {int /*<<< orphan*/  tif_clientdata; } ;
struct TYPE_12__ {scalar_t__ height; scalar_t__ width; scalar_t__ col_offset; scalar_t__ row_offset; } ;
typedef  TYPE_1__ TIFFRGBAImage ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,scalar_t__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  TIFFTAG_TILELENGTH ; 
 int /*<<< orphan*/  TIFFTAG_TILEWIDTH ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__*,scalar_t__) ; 

int
FUNC10(TIFF* tif, uint32 col, uint32 row, uint32 * raster, int stop_on_error )
{
    char 	emsg[1024] = "";
    TIFFRGBAImage img;
    int 	ok;
    uint32	tile_xsize, tile_ysize;
    uint32	read_xsize, read_ysize;
    uint32	i_row;

    /*
     * Verify that our request is legal - on a tile file, and on a
     * tile boundary.
     */
    
    if( !FUNC3( tif ) )
    {
		FUNC0(tif->tif_clientdata, FUNC1(tif),
				  "Can't use TIFFReadRGBATile() with stripped file.");
		return (0);
    }
    
    FUNC2(tif, TIFFTAG_TILEWIDTH, &tile_xsize);
    FUNC2(tif, TIFFTAG_TILELENGTH, &tile_ysize);
    if( (col % tile_xsize) != 0 || (row % tile_ysize) != 0 )
    {
		FUNC0(tif->tif_clientdata, FUNC1(tif),
                  "Row/col passed to TIFFReadRGBATile() must be top"
                  "left corner of a tile.");
	return (0);
    }

    /*
     * Setup the RGBA reader.
     */
    
    if (!FUNC7(tif, emsg) 
	|| !FUNC4(&img, tif, stop_on_error, emsg)) {
	    FUNC0(tif->tif_clientdata, FUNC1(tif), "%s", emsg);
	    return( 0 );
    }

    /*
     * The TIFFRGBAImageGet() function doesn't allow us to get off the
     * edge of the image, even to fill an otherwise valid tile.  So we
     * figure out how much we can read, and fix up the tile buffer to
     * a full tile configuration afterwards.
     */

    if( row + tile_ysize > img.height )
        read_ysize = img.height - row;
    else
        read_ysize = tile_ysize;
    
    if( col + tile_xsize > img.width )
        read_xsize = img.width - col;
    else
        read_xsize = tile_xsize;

    /*
     * Read the chunk of imagery.
     */
    
    img.row_offset = row;
    img.col_offset = col;

    ok = FUNC6(&img, raster, read_xsize, read_ysize );
        
    FUNC5(&img);

    /*
     * If our read was incomplete we will need to fix up the tile by
     * shifting the data around as if a full tile of data is being returned.
     *
     * This is all the more complicated because the image is organized in
     * bottom to top format. 
     */

    if( read_xsize == tile_xsize && read_ysize == tile_ysize )
        return( ok );

    for( i_row = 0; i_row < read_ysize; i_row++ ) {
        FUNC9( raster + (tile_ysize - i_row - 1) * tile_xsize,
                 raster + (read_ysize - i_row - 1) * read_xsize,
                 read_xsize * sizeof(uint32) );
        FUNC8( raster + (tile_ysize - i_row - 1) * tile_xsize+read_xsize,
                     0, sizeof(uint32) * (tile_xsize - read_xsize) );
    }

    for( i_row = read_ysize; i_row < tile_ysize; i_row++ ) {
        FUNC8( raster + (tile_ysize - i_row - 1) * tile_xsize,
                     0, sizeof(uint32) * tile_xsize );
    }

    return (ok);
}