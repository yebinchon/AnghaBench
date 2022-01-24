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
typedef  int /*<<< orphan*/  RD_HGLYPH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int*) ; 

__attribute__((used)) static void
FUNC6(STREAM s)
{
	RD_HGLYPH bitmap;
	uint8 font, nglyphs;
	uint16 character, offset, baseline, width, height;
	int i, datasize;
	uint8 *data;

	FUNC3(s, font);
	FUNC3(s, nglyphs);

	FUNC0(("FONTCACHE(font=%d,n=%d)\n", font, nglyphs));

	for (i = 0; i < nglyphs; i++)
	{
		FUNC2(s, character);
		FUNC2(s, offset);
		FUNC2(s, baseline);
		FUNC2(s, width);
		FUNC2(s, height);

		datasize = (height * ((width + 7) / 8) + 3) & ~3;
		FUNC4(s, data, datasize);

		bitmap = FUNC5(width, height, data);
		FUNC1(font, character, offset, baseline, width, height, bitmap);
	}
}