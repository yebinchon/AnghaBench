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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 

FUNC5()
{
	int			i;
	char		koitab[128],
				alttab[128];
	char		buf[4096];
	int			koi,
				alt;

	for (i = 0; i < 128; i++)
		koitab[i] = alttab[i] = 0;

	while (FUNC1(buf, sizeof(buf), stdin) != NULL)
	{
		if (*buf == '#')
			continue;
		FUNC4(buf, "%d %d", &koi, &alt);
		if (koi < 128 || koi > 255 || alt < 128 || alt > 255)
		{
			FUNC2(stderr, "invalid value %d\n", koi);
			FUNC0(1);
		}
		koitab[koi - 128] = alt;
		alttab[alt - 128] = koi;
	}

	i = 0;
	FUNC3("static char koi2alt[] = {\n");
	while (i < 128)
	{
		int			j = 0;

		while (j < 8)
		{
			FUNC3("0x%02x", koitab[i++]);
			j++;
			if (i >= 128)
				break;
			FUNC3(", ");
		}
		FUNC3("\n");
	}
	FUNC3("};\n");

	i = 0;
	FUNC3("static char alt2koi[] = {\n");
	while (i < 128)
	{
		int			j = 0;

		while (j < 8)
		{
			FUNC3("0x%02x", alttab[i++]);
			j++;
			if (i >= 128)
				break;
			FUNC3(", ");
		}
		FUNC3("\n");
	}
	FUNC3("};\n");
}