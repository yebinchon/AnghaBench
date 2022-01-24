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
struct subprocess_args {int /*<<< orphan*/  log; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct subprocess_args*) ; 

__attribute__((used)) static void *FUNC6(void *ptr)
{
    struct subprocess_args *p = ptr;
    FUNC3(FUNC4());

    FUNC1(p->log);

    char *err = NULL;
    if (FUNC2(p->args, NULL, NULL, NULL, NULL, &err) < 0)
        FUNC0(p->log, "Running subprocess failed: %s\n", err);

    FUNC5(p);
    return NULL;
}