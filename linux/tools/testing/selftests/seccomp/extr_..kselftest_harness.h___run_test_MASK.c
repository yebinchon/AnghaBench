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
struct __test_metadata {int passed; char* name; int termsig; int /*<<< orphan*/  step; int /*<<< orphan*/  (* fn ) (struct __test_metadata*) ;int /*<<< orphan*/  timeout; scalar_t__ trigger; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int SIGABRT ; 
 int /*<<< orphan*/  TH_LOG_STREAM ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct __test_metadata*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

void FUNC11(struct __test_metadata *t)
{
	pid_t child_pid;
	int status;

	t->passed = 1;
	t->trigger = 0;
	FUNC8("[ RUN      ] %s\n", t->name);
	FUNC5(t->timeout);
	child_pid = FUNC6();
	if (child_pid < 0) {
		FUNC8("ERROR SPAWNING TEST CHILD\n");
		t->passed = 0;
	} else if (child_pid == 0) {
		t->fn(t);
		/* return the step that failed or 0 */
		FUNC4(t->passed ? 0 : t->step);
	} else {
		/* TODO(wad) add timeout support. */
		FUNC10(child_pid, &status, 0);
		if (FUNC1(status)) {
			t->passed = t->termsig == -1 ? !FUNC0(status) : 0;
			if (t->termsig != -1) {
				FUNC7(TH_LOG_STREAM,
					"%s: Test exited normally "
					"instead of by signal (code: %d)\n",
					t->name,
					FUNC0(status));
			} else if (!t->passed) {
				FUNC7(TH_LOG_STREAM,
					"%s: Test failed at step #%d\n",
					t->name,
					FUNC0(status));
			}
		} else if (FUNC2(status)) {
			t->passed = 0;
			if (FUNC3(status) == SIGABRT) {
				FUNC7(TH_LOG_STREAM,
					"%s: Test terminated by assertion\n",
					t->name);
			} else if (FUNC3(status) == t->termsig) {
				t->passed = 1;
			} else {
				FUNC7(TH_LOG_STREAM,
					"%s: Test terminated unexpectedly "
					"by signal %d\n",
					t->name,
					FUNC3(status));
			}
		} else {
			FUNC7(TH_LOG_STREAM,
				"%s: Test ended in some other way [%u]\n",
				t->name,
				status);
		}
	}
	FUNC8("[     %4s ] %s\n", (t->passed ? "OK" : "FAIL"), t->name);
	FUNC5(0);
}