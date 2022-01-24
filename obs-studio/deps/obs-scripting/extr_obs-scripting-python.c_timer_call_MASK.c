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
struct script_callback {scalar_t__ removed; } ;
struct python_obs_callback {int /*<<< orphan*/  func; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct python_obs_callback*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct script_callback *p_cb)
{
	struct python_obs_callback *cb = (struct python_obs_callback *)p_cb;

	if (p_cb->removed)
		return;

	FUNC2(cb);
	PyObject *py_ret = FUNC0(cb->func, NULL);
	FUNC3();
	FUNC1(py_ret);
	FUNC4();
}