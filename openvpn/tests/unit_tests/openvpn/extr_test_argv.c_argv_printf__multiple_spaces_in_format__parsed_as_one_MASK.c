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
 int /*<<< orphan*/  PATH2 ; 
 struct argv FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct argv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct argv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(void **state)
{
    struct argv a = FUNC0();

    FUNC1(&a, "    %s     %s  %d   ", PATH1, PATH2, 42);
    FUNC3(a.argc, 3);

    FUNC2(&a);
}