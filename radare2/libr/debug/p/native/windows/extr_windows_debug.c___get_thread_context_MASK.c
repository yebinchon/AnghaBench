#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ctx ;
struct TYPE_4__ {int /*<<< orphan*/  ContextFlags; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_1__ CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  CONTEXT_ALL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(HANDLE th, ut8 *buf, int size, int bits) {
	int ret = 0;
	CONTEXT ctx = {0};
	// TODO: support various types?
	ctx.ContextFlags = CONTEXT_ALL;
	if (FUNC0 (th, &ctx)) {
		if (size > sizeof (ctx)) {
			size = sizeof (ctx);
		}
		FUNC2 (buf, &ctx, size);
		ret = size;
	} else {
		if (FUNC1 (th)) {
			FUNC3 ("__get_thread_context/GetThreadContext");
		}
	}
	return ret;
}