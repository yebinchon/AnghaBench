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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

void
FUNC10(STREAM s)
{
	uint16 num_updates;
	uint16 left, top, right, bottom, width, height;
	uint16 cx, cy, bpp, Bpp, compress, bufsize, size;
	uint8 *data, *bmpdata;
	int i;

	FUNC3(s, num_updates);

	for (i = 0; i < num_updates; i++)
	{
		FUNC3(s, left);
		FUNC3(s, top);
		FUNC3(s, right);
		FUNC3(s, bottom);
		FUNC3(s, width);
		FUNC3(s, height);
		FUNC3(s, bpp);
		Bpp = (bpp + 7) / 8;
		FUNC3(s, compress);
		FUNC3(s, bufsize);

		cx = right - left + 1;
		cy = bottom - top + 1;

		FUNC0(("BITMAP_UPDATE(l=%d,t=%d,r=%d,b=%d,w=%d,h=%d,Bpp=%d,cmp=%d)\n",
		       left, top, right, bottom, width, height, Bpp, compress));

		if (!compress)
		{
			int y;
			bmpdata = (uint8 *) FUNC9(width * height * Bpp);
			for (y = 0; y < height; y++)
			{
				FUNC4(s, &bmpdata[(height - y - 1) * (width * Bpp)],
					  width * Bpp);
			}
			FUNC7(left, top, cx, cy, width, height, bmpdata);
			FUNC8(bmpdata);
			continue;
		}


		if (compress & 0x400)
		{
			size = bufsize;
		}
		else
		{
			FUNC6(s, 2);	/* pad */
			FUNC3(s, size);
			FUNC6(s, 4);	/* line_size, final_size */
		}
		FUNC5(s, data, size);
		bmpdata = (uint8 *) FUNC9(width * height * Bpp);
		if (FUNC2(bmpdata, width, height, data, size, Bpp))
		{
			FUNC7(left, top, cx, cy, width, height, bmpdata);
		}
		else
		{
			FUNC1(("Failed to decompress data\n"));
		}

		FUNC8(bmpdata);
	}
}