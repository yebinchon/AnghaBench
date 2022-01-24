#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; } ;
struct TYPE_5__ {int ncolours; TYPE_2__* colours; } ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RD_HCOLOURMAP ;
typedef  TYPE_1__ COLOURMAP ;
typedef  TYPE_2__ COLOURENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int) ; 

void
FUNC8(STREAM s)
{
	COLOURENTRY *entry;
	COLOURMAP map;
	RD_HCOLOURMAP hmap;
	int i;

	FUNC3(s, 2);	/* pad */
	FUNC1(s, map.ncolours);
	FUNC3(s, 2);	/* pad */

	map.colours = (COLOURENTRY *) FUNC7(sizeof(COLOURENTRY) * map.ncolours);

	FUNC0(("PALETTE(c=%d)\n", map.ncolours));

	for (i = 0; i < map.ncolours; i++)
	{
		entry = &map.colours[i];
		FUNC2(s, entry->red);
		FUNC2(s, entry->green);
		FUNC2(s, entry->blue);
	}

	hmap = FUNC4(&map);
	FUNC5(hmap);

	FUNC6(map.colours);
}