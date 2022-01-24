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
struct obs_view {int dummy; } ;
typedef  struct obs_view obs_view_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_view*) ; 
 struct obs_view* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct obs_view*) ; 

obs_view_t *FUNC3(void)
{
	struct obs_view *view = FUNC1(sizeof(struct obs_view));

	if (!FUNC2(view)) {
		FUNC0(view);
		view = NULL;
	}

	return view;
}