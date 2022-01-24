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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  oobbuf ; 
 int /*<<< orphan*/  read_oob_sector_health ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(off_t pos)
{
	if (!read_oob_sector_health) {
		return 1;
	}
	if (FUNC0(pos)) {
		return 0;
	}
	if (FUNC1(oobbuf, 0x00) != 0xff) {
		/* block is bad */
		return 0;
	}
	if (FUNC1(oobbuf, 0x01) != 0xff) {
		/* sector is bad */
		return 0;
	}
	return 1;
}