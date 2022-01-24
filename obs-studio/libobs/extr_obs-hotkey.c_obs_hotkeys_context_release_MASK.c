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
struct obs_context_data {int /*<<< orphan*/  hotkey_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_context_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct obs_context_data*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct obs_context_data *context)
{
	if (!FUNC2())
		return;

	FUNC1(context);
	FUNC0(context);

	FUNC3(context->hotkey_data);
	FUNC4();
}