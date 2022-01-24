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
struct argv {int /*<<< orphan*/ * argv; int /*<<< orphan*/  argc; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH1 ; 
 struct argv FUNC0 (struct argv*,int /*<<< orphan*/ ) ; 
 struct argv FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct argv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void **state)
{
    struct argv a = FUNC1();
    struct argv b;

    b = FUNC0(&a, PATH1);
    FUNC3(b.argc, 1);
    FUNC4(b.argv[0], PATH1);
    FUNC2(&b);

    FUNC2(&a);
}