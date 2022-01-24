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
typedef  int /*<<< orphan*/  offset ;
typedef  int /*<<< orphan*/  length ;
typedef  int Size ;
typedef  int* Page ;
typedef  int OffsetNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,char const*,int) ; 

__attribute__((used)) static void
FUNC1(Page page, const char *delta, Size deltaSize)
{
	const char *ptr = delta;
	const char *end = delta + deltaSize;

	while (ptr < end)
	{
		OffsetNumber offset,
					length;

		FUNC0(&offset, ptr, sizeof(offset));
		ptr += sizeof(offset);
		FUNC0(&length, ptr, sizeof(length));
		ptr += sizeof(length);

		FUNC0(page + offset, ptr, length);

		ptr += length;
	}
}