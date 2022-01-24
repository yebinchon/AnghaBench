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
typedef  int /*<<< orphan*/  uint64_t ;
struct null_output {int stop_thread_active; int /*<<< orphan*/  stop_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  stop_thread ; 

__attribute__((used)) static void FUNC2(void *data, uint64_t ts)
{
	struct null_output *context = data;
	FUNC0(ts);

	context->stop_thread_active = FUNC1(&context->stop_thread,
						     NULL, stop_thread,
						     data) == 0;
}