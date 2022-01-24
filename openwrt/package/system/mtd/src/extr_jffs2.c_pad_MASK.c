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
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ buf ; 
 int erasesize ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ mtdofs ; 
 scalar_t__ mtdsize ; 
 int ofs ; 
 int /*<<< orphan*/  outfd ; 
 int /*<<< orphan*/  quiet ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void FUNC6(int size)
{
	if ((ofs % size == 0) && (ofs < erasesize))
		return;

	if (ofs < erasesize) {
		FUNC2(buf + ofs, 0xff, (size - (ofs % size)));
		ofs += (size - (ofs % size));
	}
	ofs = ofs % erasesize;
	if (ofs == 0) {
		while (FUNC3(outfd, mtdofs) && (mtdofs < mtdsize)) {
			if (!quiet)
				FUNC0(stderr, "\nSkipping bad block at 0x%08lx   ", mtdofs);

			mtdofs += erasesize;

			/* Move the file pointer along over the bad block. */
			FUNC1(outfd, erasesize, SEEK_CUR);
		}
		FUNC4(outfd, mtdofs);
		FUNC5(outfd, buf, erasesize);
		mtdofs += erasesize;
	}
}