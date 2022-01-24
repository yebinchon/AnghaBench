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
struct game_capture {int /*<<< orphan*/  pipe; int /*<<< orphan*/  process_id; } ;

/* Variables and functions */
 char* PIPE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct game_capture*) ; 
 int /*<<< orphan*/  pipe_log ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static inline bool FUNC3(struct game_capture *gc)
{
	char name[64];
	FUNC1(name, "%s%lu", PIPE_NAME, gc->process_id);

	if (!FUNC0(&gc->pipe, name, pipe_log, gc)) {
		FUNC2("init_pipe: failed to start pipe");
		return false;
	}

	return true;
}