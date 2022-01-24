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
typedef  int /*<<< orphan*/  XLogReaderState ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  scalar_t__ Pointer ;
typedef  scalar_t__ OffsetNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__,int) ; 

void
FUNC4(StringInfo buf, XLogReaderState *record)
{
	Pointer		ptr = FUNC0(record),
				end = ptr + FUNC1(record);

	while (ptr < end)
	{
		OffsetNumber offset,
					length;

		FUNC3(&offset, ptr, sizeof(offset));
		ptr += sizeof(offset);
		FUNC3(&length, ptr, sizeof(length));
		ptr += sizeof(length);
		ptr += length;

		if (ptr < end)
			FUNC2(buf, "offset %u, length %u; ", offset, length);
		else
			FUNC2(buf, "offset %u, length %u", offset, length);
	}

	return;
}