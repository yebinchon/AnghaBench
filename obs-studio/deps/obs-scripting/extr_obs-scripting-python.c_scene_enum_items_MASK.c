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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  enum_items_proc ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int obs_scene_t ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int scene ; 

__attribute__((used)) static PyObject *FUNC6(PyObject *self, PyObject *args)
{
	PyObject *py_scene;
	obs_scene_t *scene;

	FUNC1(self);

	if (!FUNC3(args, "O", &py_scene))
		return FUNC5();
	if (!FUNC4(obs_scene_t, py_scene, &scene))
		return FUNC5();

	PyObject *list = FUNC0(0);
	FUNC2(scene, enum_items_proc, list);
	return list;
}