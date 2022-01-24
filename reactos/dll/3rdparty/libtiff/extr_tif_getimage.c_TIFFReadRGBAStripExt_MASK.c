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
struct TYPE_12__ {scalar_t__ height; int /*<<< orphan*/  width; scalar_t__ col_offset; scalar_t__ row_offset; } ;
typedef  TYPE_1__ TIFFRGBAImage ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  TIFFTAG_ROWSPERSTRIP ; 

int
FUNC8(TIFF* tif, uint32 row, uint32 * raster, int stop_on_error)

{
    char 	emsg[1024] = "";
    TIFFRGBAImage img;
    int 	ok;
    uint32	rowsperstrip, rows_to_read;

    if( FUNC3( tif ) )
    {
		FUNC0(tif->tif_clientdata, FUNC1(tif),
                  "Can't use TIFFReadRGBAStrip() with tiled file.");
	return (0);
    }
    
    FUNC2(tif, TIFFTAG_ROWSPERSTRIP, &rowsperstrip);
    if( (row % rowsperstrip) != 0 )
    {
		FUNC0(tif->tif_clientdata, FUNC1(tif),
				"Row passed to TIFFReadRGBAStrip() must be first in a strip.");
		return (0);
    }

    if (FUNC7(tif, emsg) && FUNC4(&img, tif, stop_on_error, emsg)) {

        img.row_offset = row;
        img.col_offset = 0;

        if( row + rowsperstrip > img.height )
            rows_to_read = img.height - row;
        else
            rows_to_read = rowsperstrip;
        
	ok = FUNC6(&img, raster, img.width, rows_to_read );
        
	FUNC5(&img);
    } else {
		FUNC0(tif->tif_clientdata, FUNC1(tif), "%s", emsg);
		ok = 0;
    }
    
    return (ok);
}