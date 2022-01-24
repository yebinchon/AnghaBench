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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void)
{
	FUNC1("Syntax: makeamitbin [options]\n");
	FUNC1("Options:\n");
	FUNC1("  -1 ID1\tFirmware identifier 1, e.g. 'DDC_RUS001' for manufacturer LevelOne\n");
	FUNC1("  -2 ID2\tFirmware identifier 2, 'Queen' in all known cases\n");
	FUNC1("  -o FILE\tOutput file\n");
	FUNC1("  -ids\t\tShow a list of known firmware identifiers.\n");
	FUNC0(1);
}