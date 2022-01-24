#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
typedef  int /*<<< orphan*/  tmsize_t ;
struct TYPE_7__ {int /*<<< orphan*/ * td_stripoffset; } ;
struct TYPE_8__ {int tif_flags; scalar_t__ tif_col; scalar_t__ tif_row; int /*<<< orphan*/  tif_clientdata; TYPE_1__ tif_dir; } ;
typedef  TYPE_1__ TIFFDirectory ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char*,unsigned long,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t,char const*) ; 
 int TIFF_NOREADRAW ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static tmsize_t
FUNC5(TIFF* tif, uint32 strip_or_tile, int is_strip,
                        tmsize_t size, const char* module)
{
        TIFFDirectory *td = &tif->tif_dir;

        FUNC3( !FUNC4(tif) );
        FUNC3((tif->tif_flags&TIFF_NOREADRAW)==0);

        if (!FUNC0(tif, td->td_stripoffset[strip_or_tile])) {
            if( is_strip )
            {
                FUNC1(tif->tif_clientdata, module,
                    "Seek error at scanline %lu, strip %lu",
                    (unsigned long) tif->tif_row,
                    (unsigned long) strip_or_tile);
            }
            else
            {
                FUNC1(tif->tif_clientdata, module,
                    "Seek error at row %lu, col %lu, tile %lu",
                    (unsigned long) tif->tif_row,
                    (unsigned long) tif->tif_col,
                    (unsigned long) strip_or_tile);
            }
            return ((tmsize_t)(-1));
        }

        if( !FUNC2( tif, size, 0, is_strip,
                                 strip_or_tile, module ) )
        {
            return ((tmsize_t)(-1));
        }

        return (size);
}