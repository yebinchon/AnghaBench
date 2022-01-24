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
struct delay_data {int /*<<< orphan*/  ts; int /*<<< orphan*/  msg; } ;
struct TYPE_4__ {int /*<<< orphan*/  delay_mutex; int /*<<< orphan*/  delay_data; } ;
typedef  TYPE_1__ obs_output_t ;
typedef  int /*<<< orphan*/  dd ;

/* Variables and functions */
 int /*<<< orphan*/  DELAY_MSG_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct delay_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(obs_output_t *output)
{
	struct delay_data dd = {
		.msg = DELAY_MSG_STOP,
		.ts = FUNC2(),
	};

	FUNC3(&output->delay_mutex);
	FUNC0(&output->delay_data, &dd, sizeof(dd));
	FUNC4(&output->delay_mutex);

	FUNC1(output, "stopping");
}