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
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_10__ {int td_stripsperimage; int td_samplesperpixel; int td_nstrips; scalar_t__ td_planarconfig; int /*<<< orphan*/ * td_stripbytecount; int /*<<< orphan*/ * td_stripoffset; } ;
struct TYPE_11__ {TYPE_1__ tif_dir; } ;
typedef  TYPE_1__ TIFFDirectory ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FIELD_ROWSPERSTRIP ; 
 int /*<<< orphan*/  FIELD_STRIPBYTECOUNTS ; 
 int /*<<< orphan*/  FIELD_STRIPOFFSETS ; 
 int /*<<< orphan*/  FIELD_TILEDIMENSIONS ; 
 scalar_t__ PLANARCONFIG_SEPARATE ; 
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int
FUNC7(TIFF* tif)
{
	TIFFDirectory* td = &tif->tif_dir;

	if (FUNC5(tif))
		td->td_stripsperimage =
		    FUNC6(tif, FIELD_TILEDIMENSIONS) ?
			td->td_samplesperpixel : FUNC1(tif);
	else
		td->td_stripsperimage =
		    FUNC6(tif, FIELD_ROWSPERSTRIP) ?
			td->td_samplesperpixel : FUNC0(tif);
	td->td_nstrips = td->td_stripsperimage;
	if (td->td_planarconfig == PLANARCONFIG_SEPARATE)
		td->td_stripsperimage /= td->td_samplesperpixel;
	td->td_stripoffset = (uint64 *)
            FUNC3(tif, td->td_nstrips, sizeof (uint64),
                             "for \"StripOffsets\" array");
	td->td_stripbytecount = (uint64 *)
            FUNC3(tif, td->td_nstrips, sizeof (uint64),
                             "for \"StripByteCounts\" array");
	if (td->td_stripoffset == NULL || td->td_stripbytecount == NULL)
		return (0);
	/*
	 * Place data at the end-of-file
	 * (by setting offsets to zero).
	 */
	FUNC4(td->td_stripoffset, 0, td->td_nstrips*sizeof (uint64));
	FUNC4(td->td_stripbytecount, 0, td->td_nstrips*sizeof (uint64));
	FUNC2(tif, FIELD_STRIPOFFSETS);
	FUNC2(tif, FIELD_STRIPBYTECOUNTS);
	return (1);
}