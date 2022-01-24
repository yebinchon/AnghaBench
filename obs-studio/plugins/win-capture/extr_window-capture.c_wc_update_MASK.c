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
struct window_capture {int /*<<< orphan*/ * window; } ;
typedef  int /*<<< orphan*/  obs_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct window_capture*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void *data, obs_data_t *settings)
{
	struct window_capture *wc = data;
	FUNC0(wc, settings);

	/* forces a reset */
	wc->window = NULL;
}