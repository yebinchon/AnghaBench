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
struct argv {int argc; int /*<<< orphan*/ * argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH1 ; 
 int /*<<< orphan*/  PATH2 ; 
 struct argv FUNC0 (struct argv*,int /*<<< orphan*/ ) ; 
 struct argv FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct argv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct argv*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void **state)
{
    struct argv a = FUNC1();
    struct argv b;
    int i;

    FUNC2(&a, "%s", PATH2);
    b = FUNC0(&a, PATH1);
    FUNC4(b.argc, a.argc + 1);
    for (i = 0; i < b.argc; i++) {
        if (i == 0)
        {
            FUNC5(b.argv[i], PATH1);
        }
        else
        {
            FUNC5(b.argv[i], a.argv[i - 1]);
        }
    }
    FUNC3(&b);

    FUNC3(&a);
}