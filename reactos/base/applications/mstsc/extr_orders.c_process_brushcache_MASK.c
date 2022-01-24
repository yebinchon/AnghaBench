#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_3__ {int colour_code; int data_size; int* data; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  TYPE_1__ BRUSHDATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 void* FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(STREAM s, uint16 flags)
{
	BRUSHDATA brush_data;
	uint8 cache_idx, colour_code, width, height, size, type;
	uint8 *comp_brush;
	int index;
	int Bpp;

	FUNC2(s, cache_idx);
	FUNC2(s, colour_code);
	FUNC2(s, width);
	FUNC2(s, height);
	FUNC2(s, type);	/* type, 0x8x = cached */
	FUNC2(s, size);

	FUNC0(("BRUSHCACHE(idx=%d,wd=%d,ht=%d,sz=%d)\n", cache_idx, width, height, size));

	if ((width == 8) && (height == 8))
	{
		if (colour_code == 1)
		{
			brush_data.colour_code = 1;
			brush_data.data_size = 8;
			brush_data.data = FUNC7(8);
			if (size == 8)
			{
				/* read it bottom up */
				for (index = 7; index >= 0; index--)
				{
					FUNC2(s, brush_data.data[index]);
				}
			}
			else
			{
				FUNC6("incompatible brush, colour_code %d size %d\n", colour_code,
					size);
			}
			FUNC1(1, cache_idx, &brush_data);
		}
		else if ((colour_code >= 3) && (colour_code <= 6))
		{
			Bpp = colour_code - 2;
			brush_data.colour_code = colour_code;
			brush_data.data_size = 8 * 8 * Bpp;
			brush_data.data = FUNC7(8 * 8 * Bpp);
			if (size == 16 + 4 * Bpp)
			{
				FUNC4(s, comp_brush, 16 + 4 * Bpp);
				FUNC5(comp_brush, brush_data.data, Bpp);
			}
			else
			{
				FUNC3(s, brush_data.data, 8 * 8 * Bpp);
			}
			FUNC1(colour_code, cache_idx, &brush_data);
		}
		else
		{
			FUNC6("incompatible brush, colour_code %d size %d\n", colour_code, size);
		}
	}
	else
	{
		FUNC6("incompatible brush, width height %d %d\n", width, height);
	}
	if (type) {}
}