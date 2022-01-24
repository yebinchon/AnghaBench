#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ removed; } ;
struct python_obs_callback {int /*<<< orphan*/  func; TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct python_obs_callback*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void *p_cb, bool pressed)
{
	struct python_obs_callback *cb = p_cb;

	if (cb->base.removed)
		return;

	FUNC4(cb);

	PyObject *py_pressed = FUNC0(pressed);
	PyObject *args = FUNC2("(O)", py_pressed);
	PyObject *py_ret = FUNC1(cb->func, args);
	FUNC5();
	FUNC3(py_ret);
	FUNC3(args);
	FUNC3(py_pressed);

	FUNC6();
}