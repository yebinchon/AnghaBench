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
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ InvalidBuffer ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(Relation relation, Buffer buffer1, Buffer buffer2,
					 BlockNumber block1, BlockNumber block2,
					 Buffer *vmbuffer1, Buffer *vmbuffer2)
{
	bool		need_to_pin_buffer1;
	bool		need_to_pin_buffer2;

	FUNC0(FUNC2(buffer1));
	FUNC0(buffer2 == InvalidBuffer || block1 <= block2);

	while (1)
	{
		/* Figure out which pins we need but don't have. */
		need_to_pin_buffer1 = FUNC4(FUNC1(buffer1))
			&& !FUNC6(block1, *vmbuffer1);
		need_to_pin_buffer2 = buffer2 != InvalidBuffer
			&& FUNC4(FUNC1(buffer2))
			&& !FUNC6(block2, *vmbuffer2);
		if (!need_to_pin_buffer1 && !need_to_pin_buffer2)
			return;

		/* We must unlock both buffers before doing any I/O. */
		FUNC3(buffer1, BUFFER_LOCK_UNLOCK);
		if (buffer2 != InvalidBuffer && buffer2 != buffer1)
			FUNC3(buffer2, BUFFER_LOCK_UNLOCK);

		/* Get pins. */
		if (need_to_pin_buffer1)
			FUNC5(relation, block1, vmbuffer1);
		if (need_to_pin_buffer2)
			FUNC5(relation, block2, vmbuffer2);

		/* Relock buffers. */
		FUNC3(buffer1, BUFFER_LOCK_EXCLUSIVE);
		if (buffer2 != InvalidBuffer && buffer2 != buffer1)
			FUNC3(buffer2, BUFFER_LOCK_EXCLUSIVE);

		/*
		 * If there are two buffers involved and we pinned just one of them,
		 * it's possible that the second one became all-visible while we were
		 * busy pinning the first one.  If it looks like that's a possible
		 * scenario, we'll need to make a second pass through this loop.
		 */
		if (buffer2 == InvalidBuffer || buffer1 == buffer2
			|| (need_to_pin_buffer1 && need_to_pin_buffer2))
			break;
	}
}