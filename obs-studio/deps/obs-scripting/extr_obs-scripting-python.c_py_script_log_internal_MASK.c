#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  base; } ;
struct TYPE_5__ {char* array; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ cur_py_log_chunk ; 
 TYPE_3__* cur_python_script ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int*,char const**) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*,char const*) ; 
 char* FUNC7 (char const*,char) ; 
 size_t FUNC8 (char const*) ; 

__attribute__((used)) static PyObject *FUNC9(PyObject *self, PyObject *args,
					bool add_endl)
{
	static bool calling_self = false;
	int log_level;
	const char *msg;

	FUNC0(self);

	if (calling_self)
		return FUNC5();
	calling_self = true;

	/* ------------------- */

	if (!FUNC4(args, "is", &log_level, &msg))
		goto fail;
	if (!msg || !*msg)
		goto fail;

	FUNC1(&cur_py_log_chunk, msg);
	if (add_endl)
		FUNC1(&cur_py_log_chunk, "\n");

	const char *start = cur_py_log_chunk.array;
	char *endl = FUNC7(start, '\n');

	while (endl) {
		*endl = 0;
		if (cur_python_script)
			FUNC6(&cur_python_script->base, log_level, "%s",
				   start);
		else
			FUNC6(NULL, log_level, "%s", start);
		*endl = '\n';

		start = endl + 1;
		endl = FUNC7(start, '\n');
	}

	if (start) {
		size_t len = FUNC8(start);
		if (len)
			FUNC3(cur_py_log_chunk.array, start, len);
		FUNC2(&cur_py_log_chunk, len);
	}

	/* ------------------- */

fail:
	calling_self = false;
	return FUNC5();
}