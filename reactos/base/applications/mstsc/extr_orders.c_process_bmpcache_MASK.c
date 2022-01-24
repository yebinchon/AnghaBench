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
typedef  int /*<<< orphan*/  RD_HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ RDP_V5 ; 
 scalar_t__ FUNC1 (int*,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ g_rdp_version ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(STREAM s)
{
	RD_HBITMAP bitmap;
	uint16 cache_idx, size;
	uint8 cache_id, width, height, bpp, Bpp;
	uint8 *data, *bmpdata;
	uint16 bufsize, pad2, row_size, final_size;
	uint8 pad1;

	pad2 = row_size = final_size = 0xffff;	/* Shut the compiler up */

	FUNC4(s, cache_id);
	FUNC4(s, pad1);	/* pad */
	FUNC4(s, width);
	FUNC4(s, height);
	FUNC4(s, bpp);
	Bpp = (bpp + 7) / 8;
	FUNC3(s, bufsize);	/* bufsize */
	FUNC3(s, cache_idx);

	if (g_rdp_version >= RDP_V5)
	{
		size = bufsize;
	}
	else
	{

		/* Begin compressedBitmapData */
		FUNC3(s, pad2);	/* pad */
		FUNC3(s, size);
		/*      in_uint8s(s, 4);  *//* row_size, final_size */
		FUNC3(s, row_size);
		FUNC3(s, final_size);

	}
	FUNC5(s, data, size);

	FUNC0(("BMPCACHE(cx=%d,cy=%d,id=%d,idx=%d,bpp=%d,size=%d,pad1=%d,bufsize=%d,pad2=%d,rs=%d,fs=%d)\n", width, height, cache_id, cache_idx, bpp, size, pad1, bufsize, pad2, row_size, final_size));

	bmpdata = (uint8 *) FUNC8(width * height * Bpp);

	if (FUNC1(bmpdata, width, height, data, size, Bpp))
	{
		bitmap = FUNC6(width, height, bmpdata);
		FUNC2(cache_id, cache_idx, bitmap);
	}
	else
	{
		FUNC0(("Failed to decompress bitmap data\n"));
	}
	if (pad1 || pad2) {}

	FUNC7(bmpdata);
}