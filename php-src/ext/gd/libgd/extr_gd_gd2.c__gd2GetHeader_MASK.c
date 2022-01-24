#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ offset; scalar_t__ size; } ;
typedef  TYPE_1__ t_chunk_info ;
typedef  int /*<<< orphan*/  gdIOCtxPtr ;

/* Variables and functions */
 int EOF ; 
 int GD2_CHUNKSIZE_MAX ; 
 int GD2_CHUNKSIZE_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int GD2_FMT_COMPRESSED ; 
 int GD2_FMT_RAW ; 
 int GD2_FMT_TRUECOLOR_COMPRESSED ; 
 int GD2_FMT_TRUECOLOR_RAW ; 
 int /*<<< orphan*/  GD2_ID ; 
 int INT_MAX ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(gdIOCtxPtr in, int *sx, int *sy, int *cs, int *vers, int *fmt, int *ncx, int *ncy, t_chunk_info ** chunkIdx)
{
	int i;
	int ch;
	char id[5];
	t_chunk_info *cidx;
	int sidx;
	int nc;

	FUNC0(FUNC7("Reading gd2 header info"));

	for (i = 0; i < 4; i++) {
		ch = FUNC4(in);
		if (ch == EOF) {
			goto fail1;
		}
		id[i] = ch;
	}
	id[4] = 0;

	FUNC0(FUNC7("Got file code: %s", id));

	/* Equiv. of 'magick'.  */
	if (FUNC10(id, GD2_ID) != 0) {
		FUNC0(FUNC7("Not a valid gd2 file"));
		goto fail1;
	}

	/* Version */
	if (FUNC6(vers, in) != 1) {
		goto fail1;
	}
	FUNC0(FUNC7("Version: %d", *vers));

	if ((*vers != 1) && (*vers != 2)) {
		FUNC0(FUNC7("Bad version: %d", *vers));
		goto fail1;
	}

	/* Image Size */
	if (!FUNC6(sx, in)) {
		FUNC0(FUNC7("Could not get x-size"));
		goto fail1;
	}
	if (!FUNC6(sy, in)) {
		FUNC0(FUNC7("Could not get y-size"));
		goto fail1;
	}
	FUNC0(FUNC7("Image is %dx%d", *sx, *sy));

	/* Chunk Size (pixels, not bytes!) */
	if (FUNC6(cs, in) != 1) {
		goto fail1;
	}
	FUNC0(FUNC7("ChunkSize: %d", *cs));

	if ((*cs < GD2_CHUNKSIZE_MIN) || (*cs > GD2_CHUNKSIZE_MAX)) {
		FUNC0(FUNC7("Bad chunk size: %d", *cs));
		goto fail1;
	}

	/* Data Format */
	if (FUNC6(fmt, in) != 1) {
		goto fail1;
	}
	FUNC0(FUNC7("Format: %d", *fmt));

	if ((*fmt != GD2_FMT_RAW) && (*fmt != GD2_FMT_COMPRESSED) && (*fmt != GD2_FMT_TRUECOLOR_RAW) && (*fmt != GD2_FMT_TRUECOLOR_COMPRESSED)) {
		FUNC0(FUNC7("Bad data format: %d", *fmt));
		goto fail1;
	}

	/* # of chunks wide */
	if (FUNC6(ncx, in) != 1) {
		goto fail1;
	}
	FUNC0(FUNC7("%d Chunks Wide", *ncx));

	/* # of chunks high */
	if (FUNC6(ncy, in) != 1) {
		goto fail1;
	}
	FUNC0(FUNC7("%d Chunks vertically", *ncy));

	if (FUNC1(*fmt)) {
		if (*ncx <= 0 || *ncy <= 0 || *ncx > INT_MAX / *ncy) {
			FUNC0(FUNC9 ("Illegal chunk counts: %d * %d\n", *ncx, *ncy));
			goto fail1;
		}
		nc = (*ncx) * (*ncy);
		FUNC0(FUNC7("Reading %d chunk index entries", nc));
		if (FUNC8(sizeof(t_chunk_info), nc)) {
			goto fail1;
		}
		sidx = sizeof(t_chunk_info) * nc;
		if (sidx <= 0) {
			goto fail1;
		}
		cidx = FUNC2(sidx, 1);
		if (cidx == NULL) {
			goto fail1;
		}

		for (i = 0; i < nc; i++) {
			if (FUNC5(&cidx[i].offset, in) != 1) {
				FUNC3(cidx);
				goto fail1;
			}
			if (FUNC5(&cidx[i].size, in) != 1) {
				FUNC3(cidx);
				goto fail1;
			}
			if (cidx[i].offset < 0 || cidx[i].size < 0) {
				FUNC3(cidx);
				goto fail1;
			}
		}
		*chunkIdx = cidx;
	}

	FUNC0(FUNC7("gd2 header complete"));

	return 1;

fail1:
	return 0;
}