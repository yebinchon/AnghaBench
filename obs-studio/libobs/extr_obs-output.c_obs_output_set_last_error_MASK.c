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
struct TYPE_4__ {int /*<<< orphan*/ * last_error_message; } ;
typedef  TYPE_1__ obs_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 

void FUNC3(obs_output_t *output, const char *message)
{
	if (!FUNC2(output, "obs_output_set_last_error"))
		return;

	if (output->last_error_message)
		FUNC0(output->last_error_message);

	if (message)
		output->last_error_message = FUNC1(message);
	else
		output->last_error_message = NULL;
}