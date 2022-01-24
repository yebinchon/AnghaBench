#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t num; int /*<<< orphan*/ * array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cur_py_log_chunk ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  py_obspython ; 
 scalar_t__ python_loaded ; 
 int python_loaded_at_all ; 
 TYPE_1__ python_paths ; 
 int /*<<< orphan*/  python_tick ; 
 int /*<<< orphan*/  tick_mutex ; 
 int /*<<< orphan*/  timer_mutex ; 

void FUNC9(void)
{
	if (!python_loaded_at_all)
		return;

	if (python_loaded && FUNC2()) {
		FUNC0();

		FUNC3(py_obspython);
		FUNC1();
	}

	/* ---------------------- */

	FUNC7(python_tick, NULL);

	for (size_t i = 0; i < python_paths.num; i++)
		FUNC4(python_paths.array[i]);
	FUNC5(python_paths);

	FUNC8(&tick_mutex);
	FUNC8(&timer_mutex);
	FUNC6(&cur_py_log_chunk);

	python_loaded_at_all = false;
}