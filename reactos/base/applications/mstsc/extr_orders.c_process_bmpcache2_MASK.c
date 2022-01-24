#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8 ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  scalar_t__ RD_HBITMAP ;
typedef  scalar_t__ RD_BOOL ;

/* Variables and functions */
 int BUFSIZE_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ID_MASK ; 
 int LONG_FORMAT ; 
 int MODE_MASK ; 
 int MODE_SHIFT ; 
 int PERSIST ; 
 int SQUARE ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int*,int,int,int,int*) ; 
 scalar_t__ FUNC8 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11(STREAM s, uint16 flags, RD_BOOL compressed)
{
	RD_HBITMAP bitmap;
	int y;
	uint8 cache_id, cache_idx_low, width, height, Bpp;
	uint16 cache_idx, bufsize;
	uint8 *data, *bmpdata, *bitmap_id;

	bitmap_id = NULL;	/* prevent compiler warning */
	cache_id = flags & ID_MASK;
	Bpp = ((flags & MODE_MASK) >> MODE_SHIFT) - 2;

	if (flags & PERSIST)
	{
		FUNC5(s, bitmap_id, 8);
	}

	if (flags & SQUARE)
	{
		FUNC4(s, width);
		height = width;
	}
	else
	{
		FUNC4(s, width);
		FUNC4(s, height);
	}

	FUNC3(s, bufsize);
	bufsize &= BUFSIZE_MASK;
	FUNC4(s, cache_idx);

	if (cache_idx & LONG_FORMAT)
	{
		FUNC4(s, cache_idx_low);
		cache_idx = ((cache_idx ^ LONG_FORMAT) << 8) + cache_idx_low;
	}

	FUNC5(s, data, bufsize);

	FUNC0(("BMPCACHE2(compr=%d,flags=%x,cx=%d,cy=%d,id=%d,idx=%d,Bpp=%d,bs=%d)\n",
	       compressed, flags, width, height, cache_id, cache_idx, Bpp, bufsize));

	bmpdata = (uint8 *) FUNC10(width * height * Bpp);

	if (compressed)
	{
		if (!FUNC1(bmpdata, width, height, data, bufsize, Bpp))
		{
			FUNC0(("Failed to decompress bitmap data\n"));
			FUNC9(bmpdata);
			return;
		}
	}
	else
	{
		for (y = 0; y < height; y++)
			FUNC6(&bmpdata[(height - y - 1) * (width * Bpp)],
			       &data[y * (width * Bpp)], width * Bpp);
	}

	bitmap = FUNC8(width, height, bmpdata);

	if (bitmap)
	{
		FUNC2(cache_id, cache_idx, bitmap);
		if (flags & PERSIST)
			FUNC7(cache_id, cache_idx, bitmap_id, width, height,
					     width * height * Bpp, bmpdata);
	}
	else
	{
		FUNC0(("process_bmpcache2: ui_create_bitmap failed\n"));
	}

	FUNC9(bmpdata);
}