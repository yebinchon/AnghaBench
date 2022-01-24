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
typedef  int /*<<< orphan*/  uint16 ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RD_HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void
FUNC10(STREAM s)
{
	RD_HBITMAP bitmap;
	uint16 cache_idx, bufsize;
	uint8 cache_id, width, height, bpp, Bpp;
	uint8 *data, *inverted;
	int y;

	FUNC3(s, cache_id);
	FUNC5(s, 1);	/* pad */
	FUNC3(s, width);
	FUNC3(s, height);
	FUNC3(s, bpp);
	Bpp = (bpp + 7) / 8;
	FUNC2(s, bufsize);
	FUNC2(s, cache_idx);
	FUNC4(s, data, bufsize);

	FUNC0(("RAW_BMPCACHE(cx=%d,cy=%d,id=%d,idx=%d)\n", width, height, cache_id, cache_idx));
	inverted = (uint8 *) FUNC9(width * height * Bpp);
	for (y = 0; y < height; y++)
	{
		FUNC6(&inverted[(height - y - 1) * (width * Bpp)], &data[y * (width * Bpp)],
		       width * Bpp);
	}

	bitmap = FUNC7(width, height, inverted);
	FUNC8(inverted);
	FUNC1(cache_id, cache_idx, bitmap);
}