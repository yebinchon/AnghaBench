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
struct rpc_createerr {int dummy; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_createerr*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_createerr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int rce_key ; 
 struct rpc_createerr rpc_createerr ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,void*) ; 
 int /*<<< orphan*/  tsd_lock ; 

struct rpc_createerr *
FUNC8()
{
	struct rpc_createerr *rce_addr;

	FUNC4(&tsd_lock);
	if (rce_key == -1)
		rce_key = FUNC0();	//thr_keycreate(&rce_key, free);
	FUNC5(&tsd_lock);

	rce_addr = (struct rpc_createerr *)FUNC6(rce_key);
	if (!rce_addr) {
		rce_addr = (struct rpc_createerr *)
			FUNC2(sizeof (struct rpc_createerr));
		if (!rce_addr ||
		    FUNC7(rce_key, (void *) rce_addr) == 0) {
			if (rce_addr)
				FUNC1(rce_addr);
			return (&rpc_createerr);
		}
		FUNC3(rce_addr, 0, sizeof (struct rpc_createerr));
	}
	return (rce_addr);
}