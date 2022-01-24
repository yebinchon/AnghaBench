#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
typedef  scalar_t__ tmsize_t ;
struct TYPE_10__ {scalar_t__ td_nstrips; scalar_t__ td_stripsperimage; } ;
struct TYPE_11__ {scalar_t__ tif_tilesize; int /*<<< orphan*/  (* tif_postdecode ) (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ;scalar_t__ (* tif_decodetile ) (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  tif_clientdata; TYPE_1__ tif_dir; } ;
typedef  TYPE_1__ TIFFDirectory ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__,void*,scalar_t__) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 

tmsize_t
FUNC9(TIFF* tif, uint32 tile,
                                    void **buf, tmsize_t bufsizetoalloc,
                                    tmsize_t size_to_read)
{
    static const char module[] = "_TIFFReadEncodedTileAndAllocBuffer";
    TIFFDirectory *td = &tif->tif_dir;
    tmsize_t tilesize = tif->tif_tilesize;

    if( *buf != NULL )
    {
        return FUNC4(tif, tile, *buf, size_to_read);
    }

    if (!FUNC0(tif, 1))
            return ((tmsize_t)(-1));
    if (tile >= td->td_nstrips) {
            FUNC1(tif->tif_clientdata, module,
                "%lu: Tile out of range, max %lu",
                (unsigned long) tile, (unsigned long) td->td_nstrips);
            return ((tmsize_t)(-1));
    }

    if (!FUNC3(tif,tile))
            return((tmsize_t)(-1));

    *buf = FUNC5(bufsizetoalloc);
    if (*buf == NULL) {
            FUNC1(tif->tif_clientdata, FUNC2(tif),
                         "No space for tile buffer");
            return((tmsize_t)(-1));
    }
    FUNC6(*buf, 0, bufsizetoalloc);

    if (size_to_read == (tmsize_t)(-1))
        size_to_read = tilesize;
    else if (size_to_read > tilesize)
        size_to_read = tilesize;
    if( (*tif->tif_decodetile)(tif,
        (uint8*) *buf, size_to_read, (uint16)(tile/td->td_stripsperimage))) {
        (*tif->tif_postdecode)(tif, (uint8*) *buf, size_to_read);
        return (size_to_read);
    } else
        return ((tmsize_t)(-1));
}