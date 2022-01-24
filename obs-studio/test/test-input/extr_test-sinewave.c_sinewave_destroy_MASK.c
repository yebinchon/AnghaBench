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
struct sinewave_data {int /*<<< orphan*/  event; int /*<<< orphan*/  thread; scalar_t__ initialized_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sinewave_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct sinewave_data *swd = data;

	if (swd) {
		if (swd->initialized_thread) {
			void *ret;
			FUNC2(swd->event);
			FUNC3(swd->thread, &ret);
		}

		FUNC1(swd->event);
		FUNC0(swd);
	}
}