#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  reconnecting; int /*<<< orphan*/  interleaved_mutex; int /*<<< orphan*/  delay_capturing; } ;
typedef  TYPE_1__ obs_output_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC8(obs_output_t *output)
{
	if (FUNC0(output))
		return false;

	FUNC2(&output->interleaved_mutex);
	FUNC5(output);
	FUNC1(&output->delay_capturing, true);
	FUNC3(&output->interleaved_mutex);

	if (FUNC4(output)) {
		FUNC6(output);
		FUNC1(&output->reconnecting, false);
	} else {
		FUNC7(output);
	}

	return true;
}