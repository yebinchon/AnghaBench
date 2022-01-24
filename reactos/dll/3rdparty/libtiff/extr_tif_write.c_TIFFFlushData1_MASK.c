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
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_7__ {int /*<<< orphan*/  td_fillorder; } ;
struct TYPE_8__ {scalar_t__ tif_rawcc; int tif_flags; scalar_t__ tif_rawdata; scalar_t__ tif_rawcp; int /*<<< orphan*/  tif_curstrip; int /*<<< orphan*/  tif_curtile; TYPE_1__ tif_dir; } ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int TIFF_BUF4WRITE ; 
 int TIFF_NOBITREV ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

int
FUNC4(TIFF* tif)
{
	if (tif->tif_rawcc > 0 && tif->tif_flags & TIFF_BUF4WRITE ) {
		if (!FUNC2(tif, tif->tif_dir.td_fillorder) &&
		    (tif->tif_flags & TIFF_NOBITREV) == 0)
			FUNC1((uint8*)tif->tif_rawdata,
			    tif->tif_rawcc);
		if (!FUNC0(tif,
		    FUNC3(tif) ? tif->tif_curtile : tif->tif_curstrip,
		    tif->tif_rawdata, tif->tif_rawcc))
        {
            /* We update those variables even in case of error since there's */
            /* code that doesn't really check the return code of this */
            /* function */
            tif->tif_rawcc = 0;
            tif->tif_rawcp = tif->tif_rawdata;
			return (0);
        }
		tif->tif_rawcc = 0;
		tif->tif_rawcp = tif->tif_rawdata;
	}
	return (1);
}