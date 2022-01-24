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
typedef  int /*<<< orphan*/  BufFile ;

/* Variables and functions */
 scalar_t__ BLCKSZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(BufFile *file, long blknum, void *ptr)
{
	if (FUNC1(file, blknum) != 0)
		FUNC2(ERROR, "could not seek temporary file: %m");
	if (FUNC0(file, ptr, BLCKSZ) != BLCKSZ)
		FUNC2(ERROR, "could not read temporary file: %m");
}