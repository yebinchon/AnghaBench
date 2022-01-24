#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void const* end; void const* start; } ;
struct fiq_req {scalar_t__ flags; int /*<<< orphan*/  reg; TYPE_1__ flush; } ;

/* Variables and functions */
 scalar_t__ CNS3XXX_FLUSH_RANGE ; 
 int /*<<< orphan*/  FIQ_GENERATE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  fiq_data ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct fiq_req* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void const*,void const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(const void *start, const void *end)
{
	unsigned long flags;
	struct fiq_req *req;

	FUNC3(flags);
	/* currently, not possible to take cpu0 down, so only check cpu1 */
	if (!FUNC1(1)) {
		FUNC2(flags);
		FUNC6(start, end);
		return;
	}

	req = FUNC5(&fiq_data);

	req->flush.start = start;
	req->flush.end = end;
	req->flags = CNS3XXX_FLUSH_RANGE;
	FUNC4();

	FUNC7(FIQ_GENERATE, req->reg);

	FUNC6(start, end);

	while (req->flags)
		FUNC0();

	FUNC2(flags);
}