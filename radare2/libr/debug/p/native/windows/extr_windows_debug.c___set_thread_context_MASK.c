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
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_1__ CONTEXT ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(HANDLE th, const ut8 *buf, int size, int bits) {
	bool ret;
	CONTEXT ctx = {0};
	size = FUNC0 (size, sizeof (ctx));
	FUNC2 (&ctx, buf, size);
	if(!(ret = FUNC1 (th, &ctx))) {
		FUNC3 ("__set_thread_context/SetThreadContext");
	}
	return ret;
}