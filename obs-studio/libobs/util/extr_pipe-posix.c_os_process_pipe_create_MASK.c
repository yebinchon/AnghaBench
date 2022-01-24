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
struct os_process_pipe {int read_pipe; int /*<<< orphan*/ * file; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  pipe ;
typedef  struct os_process_pipe os_process_pipe_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct os_process_pipe* FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char const*) ; 

os_process_pipe_t *FUNC2(const char *cmd_line,
					  const char *type)
{
	struct os_process_pipe pipe = {0};
	struct os_process_pipe *out;

	if (!cmd_line || !type) {
		return NULL;
	}

	pipe.file = FUNC1(cmd_line, type);
	pipe.read_pipe = *type == 'r';

	if (pipe.file == (FILE *)-1 || pipe.file == NULL) {
		return NULL;
	}

	out = FUNC0(sizeof(pipe));
	*out = pipe;
	return out;
}