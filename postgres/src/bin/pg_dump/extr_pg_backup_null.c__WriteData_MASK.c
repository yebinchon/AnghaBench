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
typedef  int /*<<< orphan*/  ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*,int,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(ArchiveHandle *AH, const void *data, size_t dLen)
{
	/* Just send it to output, ahwrite() already errors on failure */
	FUNC0(data, 1, dLen, AH);
	return;
}