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
struct argv {int /*<<< orphan*/  argc; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH1 ; 
 int /*<<< orphan*/  SCRIPT_CMD ; 
 struct argv FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct argv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct argv*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct argv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(void **state)
{
    struct argv a = FUNC0();

    FUNC1(&a, SCRIPT_CMD);
    FUNC2(&a, "bar baz %d %s", 42, PATH1);
    FUNC4(a.argc, 7);

    FUNC3(&a);
}