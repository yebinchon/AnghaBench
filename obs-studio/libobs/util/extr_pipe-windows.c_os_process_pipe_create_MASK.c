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
struct TYPE_4__ {int read_pipe; int /*<<< orphan*/ * handle_err; int /*<<< orphan*/ * process; int /*<<< orphan*/ * handle; } ;
typedef  TYPE_1__ os_process_pipe_t ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HANDLE_FLAG_INHERIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

os_process_pipe_t *FUNC5(const char *cmd_line,
					  const char *type)
{
	os_process_pipe_t *pp = NULL;
	bool read_pipe;
	HANDLE process;
	HANDLE output;
	HANDLE err_input, err_output;
	HANDLE input;
	bool success;

	if (!cmd_line || !type) {
		return NULL;
	}
	if (*type != 'r' && *type != 'w') {
		return NULL;
	}
	if (!FUNC3(&input, &output)) {
		return NULL;
	}

	if (!FUNC3(&err_input, &err_output)) {
		return NULL;
	}

	read_pipe = *type == 'r';

	success = !!FUNC1(read_pipe ? input : output,
					 HANDLE_FLAG_INHERIT, false);
	if (!success) {
		goto error;
	}

	success = !!FUNC1(err_input, HANDLE_FLAG_INHERIT, false);
	if (!success) {
		goto error;
	}

	success = FUNC4(cmd_line, read_pipe ? NULL : input,
				 read_pipe ? output : NULL, err_output,
				 &process);
	if (!success) {
		goto error;
	}

	pp = FUNC2(sizeof(*pp));

	pp->handle = read_pipe ? input : output;
	pp->read_pipe = read_pipe;
	pp->process = process;
	pp->handle_err = err_input;

	FUNC0(read_pipe ? output : input);
	FUNC0(err_output);
	return pp;

error:
	FUNC0(output);
	FUNC0(input);
	return NULL;
}