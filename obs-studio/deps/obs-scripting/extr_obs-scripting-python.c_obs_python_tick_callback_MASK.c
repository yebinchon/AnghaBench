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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct python_obs_callback*) ; 
 int /*<<< orphan*/  FUNC4 (void (*) (void*,float),struct python_obs_callback*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void *priv, float seconds)
{
	struct python_obs_callback *cb = priv;

	if (cb->base.removed) {
		FUNC4(obs_python_tick_callback, cb);
		return;
	}

	FUNC3(cb);

	PyObject *args = FUNC1("(f)", seconds);
	PyObject *py_ret = FUNC0(cb->func, args);
	FUNC5();
	FUNC2(py_ret);
	FUNC2(args);

	FUNC6();
}