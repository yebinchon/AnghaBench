#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64 ;
typedef  scalar_t__ uint32 ;
typedef  int uint16 ;
struct TYPE_14__ {int* td_stripbytecount; scalar_t__ td_nstrips; scalar_t__ td_compression; scalar_t__ td_planarconfig; int td_samplesperpixel; int* td_stripoffset; scalar_t__ td_imagelength; scalar_t__ td_stripsperimage; scalar_t__ td_rowsperstrip; } ;
struct TYPE_16__ {int tif_flags; int /*<<< orphan*/  tif_clientdata; TYPE_1__ tif_dir; } ;
struct TYPE_15__ {int tdir_count; scalar_t__ tdir_type; } ;
typedef  int /*<<< orphan*/  TIFFHeaderClassic ;
typedef  int /*<<< orphan*/  TIFFHeaderBig ;
typedef  TYPE_1__ TIFFDirectory ;
typedef  TYPE_2__ TIFFDirEntry ;
typedef  int /*<<< orphan*/  TIFFDataType ;
typedef  TYPE_3__ TIFF ;

/* Variables and functions */
 scalar_t__ COMPRESSION_NONE ; 
 int /*<<< orphan*/  FIELD_ROWSPERSTRIP ; 
 int /*<<< orphan*/  FIELD_STRIPBYTECOUNTS ; 
 scalar_t__ PLANARCONFIG_SEPARATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*) ; 
 int TIFF_BIGTIFF ; 
 scalar_t__ FUNC7 (TYPE_3__*,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC11(TIFF* tif, TIFFDirEntry* dir, uint16 dircount)
{
	static const char module[] = "EstimateStripByteCounts";

	TIFFDirEntry *dp;
	TIFFDirectory *td = &tif->tif_dir;
	uint32 strip;

    /* Do not try to load stripbytecount as we will compute it */
        if( !FUNC8( tif, 0 ) )
            return -1;

	if (td->td_stripbytecount)
		FUNC9(td->td_stripbytecount);
	td->td_stripbytecount = (uint64*)
	    FUNC7(tif, td->td_nstrips, sizeof (uint64),
		"for \"StripByteCounts\" array");
        if( td->td_stripbytecount == NULL )
            return -1;

	if (td->td_compression != COMPRESSION_NONE) {
		uint64 space;
		uint64 filesize;
		uint16 n;
		filesize = FUNC3(tif);
		if (!(tif->tif_flags&TIFF_BIGTIFF))
			space=sizeof(TIFFHeaderClassic)+2+dircount*12+4;
		else
			space=sizeof(TIFFHeaderBig)+8+dircount*20+8;
		/* calculate amount of space used by indirect values */
		for (dp = dir, n = dircount; n > 0; n--, dp++)
		{
			uint32 typewidth;
			uint64 datasize;
			typewidth = FUNC0((TIFFDataType) dp->tdir_type);
			if (typewidth == 0) {
				FUNC1(tif->tif_clientdata, module,
				    "Cannot determine size of unknown tag type %d",
				    dp->tdir_type);
				return -1;
			}
			datasize=(uint64)typewidth*dp->tdir_count;
			if (!(tif->tif_flags&TIFF_BIGTIFF))
			{
				if (datasize<=4)
					datasize=0;
			}
			else
			{
				if (datasize<=8)
					datasize=0;
			}
			space+=datasize;
		}
		if( filesize < space )
                    /* we should perhaps return in error ? */
                    space = filesize;
                else
                    space = filesize - space;
		if (td->td_planarconfig == PLANARCONFIG_SEPARATE)
			space /= td->td_samplesperpixel;
		for (strip = 0; strip < td->td_nstrips; strip++)
			td->td_stripbytecount[strip] = space;
		/*
		 * This gross hack handles the case were the offset to
		 * the last strip is past the place where we think the strip
		 * should begin.  Since a strip of data must be contiguous,
		 * it's safe to assume that we've overestimated the amount
		 * of data in the strip and trim this number back accordingly.
		 */
		strip--;
		if (td->td_stripoffset[strip]+td->td_stripbytecount[strip] > filesize)
			td->td_stripbytecount[strip] = filesize - td->td_stripoffset[strip];
	} else if (FUNC10(tif)) {
		uint64 bytespertile = FUNC6(tif);

		for (strip = 0; strip < td->td_nstrips; strip++)
		    td->td_stripbytecount[strip] = bytespertile;
	} else {
		uint64 rowbytes = FUNC4(tif);
		uint32 rowsperstrip = td->td_imagelength/td->td_stripsperimage;
		for (strip = 0; strip < td->td_nstrips; strip++)
			td->td_stripbytecount[strip] = rowbytes * rowsperstrip;
	}
	FUNC5(tif, FIELD_STRIPBYTECOUNTS);
	if (!FUNC2(tif, FIELD_ROWSPERSTRIP))
		td->td_rowsperstrip = td->td_imagelength;
	return 1;
}