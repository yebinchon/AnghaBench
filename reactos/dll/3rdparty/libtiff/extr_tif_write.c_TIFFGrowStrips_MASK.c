#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
typedef  int uint32 ;
struct TYPE_4__ {scalar_t__ td_planarconfig; int td_nstrips; int /*<<< orphan*/ * td_stripbytecount; int /*<<< orphan*/ * td_stripoffset; } ;
struct TYPE_5__ {int /*<<< orphan*/  tif_flags; int /*<<< orphan*/  tif_clientdata; TYPE_1__ tif_dir; } ;
typedef  TYPE_1__ TIFFDirectory ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 scalar_t__ PLANARCONFIG_CONTIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  TIFF_DIRTYDIRECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(TIFF* tif, uint32 delta, const char* module)
{
	TIFFDirectory *td = &tif->tif_dir;
	uint64* new_stripoffset;
	uint64* new_stripbytecount;

	FUNC4(td->td_planarconfig == PLANARCONFIG_CONTIG);
	new_stripoffset = (uint64*)FUNC3(td->td_stripoffset,
		(td->td_nstrips + delta) * sizeof (uint64));
	new_stripbytecount = (uint64*)FUNC3(td->td_stripbytecount,
		(td->td_nstrips + delta) * sizeof (uint64));
	if (new_stripoffset == NULL || new_stripbytecount == NULL) {
		if (new_stripoffset)
			FUNC1(new_stripoffset);
		if (new_stripbytecount)
			FUNC1(new_stripbytecount);
		td->td_nstrips = 0;
		FUNC0(tif->tif_clientdata, module, "No space to expand strip arrays");
		return (0);
	}
	td->td_stripoffset = new_stripoffset;
	td->td_stripbytecount = new_stripbytecount;
	FUNC2(td->td_stripoffset + td->td_nstrips,
		    0, delta*sizeof (uint64));
	FUNC2(td->td_stripbytecount + td->td_nstrips,
		    0, delta*sizeof (uint64));
	td->td_nstrips += delta;
        tif->tif_flags |= TIFF_DIRTYDIRECT;

	return (1);
}