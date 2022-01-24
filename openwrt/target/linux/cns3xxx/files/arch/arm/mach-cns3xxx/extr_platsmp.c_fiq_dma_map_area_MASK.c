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
struct TYPE_2__ {size_t size; void const* addr; } ;
struct fiq_req {int flags; int /*<<< orphan*/  reg; TYPE_1__ map; } ;

/* Variables and functions */
 int CNS3XXX_MAP_AREA ; 
 int /*<<< orphan*/  FIQ_GENERATE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  fiq_data ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct fiq_req* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(const void *addr, size_t size, int dir)
{
	unsigned long flags;
	struct fiq_req *req;

	FUNC3(flags);
	/* currently, not possible to take cpu0 down, so only check cpu1 */
	if (!FUNC1(1)) {
		FUNC2(flags);
		FUNC6(addr, size, dir);
		return;
	}

	req = FUNC5(&fiq_data);
	req->map.addr = addr;
	req->map.size = size;
	req->flags = dir | CNS3XXX_MAP_AREA;
	FUNC4();

	FUNC7(FIQ_GENERATE, req->reg);

	FUNC6(addr, size, dir);
	while (req->flags)
		FUNC0();

	FUNC2(flags);
}