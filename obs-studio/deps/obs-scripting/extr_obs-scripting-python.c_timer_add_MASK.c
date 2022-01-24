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
typedef  unsigned long long uint64_t ;
struct python_obs_timer {unsigned long long interval; int /*<<< orphan*/  last_ts; } ;
struct python_obs_callback {int dummy; } ;
struct obs_python_script {int dummy; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct python_obs_callback* FUNC1 (struct obs_python_script*,int /*<<< orphan*/ *,int) ; 
 struct obs_python_script* cur_python_script ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct python_obs_callback*) ; 
 int /*<<< orphan*/  defer_timer_init ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 struct python_obs_timer* FUNC6 (struct python_obs_callback*) ; 

__attribute__((used)) static PyObject *FUNC7(PyObject *self, PyObject *args)
{
	struct obs_python_script *script = cur_python_script;
	PyObject *py_cb;
	int ms;

	FUNC0(self);

	if (!FUNC4(args, "Oi", &py_cb, &ms))
		return FUNC5();

	struct python_obs_callback *cb = FUNC1(
		script, py_cb, sizeof(struct python_obs_timer));
	struct python_obs_timer *timer = FUNC6(cb);

	timer->interval = (uint64_t)ms * 1000000ULL;
	timer->last_ts = FUNC3();

	FUNC2(defer_timer_init, cb);
	return FUNC5();
}