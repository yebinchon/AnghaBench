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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RD_HCURSOR ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 

__attribute__((used)) static void
FUNC7(STREAM s, int bpp)
{
	uint16 width, height, cache_idx, masklen, datalen;
	uint16 x, y;
	uint8 *mask;
	uint8 *data;
	RD_HCURSOR cursor;

	FUNC2(s, cache_idx);
	FUNC2(s, x);
	FUNC2(s, y);
	FUNC2(s, width);
	FUNC2(s, height);
	FUNC2(s, masklen);
	FUNC2(s, datalen);
	FUNC3(s, data, datalen);
	FUNC3(s, mask, masklen);
	if ((width != 32) || (height != 32))
	{
		FUNC6("process_colour_pointer_common: " "width %d height %d\n", width, height);
	}

	/* keep hotspot within cursor bounding box */
	x = FUNC0(x, width - 1);
	y = FUNC0(y, height - 1);
	cursor = FUNC4(x, y, width, height, mask, data, bpp);
	FUNC5(cursor);
	FUNC1(cache_idx, cursor);
}