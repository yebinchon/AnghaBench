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
typedef  int /*<<< orphan*/  json_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(void)
{
    json_t *array, *five, *seven;
    int i;

    array = FUNC1();
    five = FUNC6(5);
    seven = FUNC6(7);

    if(!array)
        FUNC0("unable to create array");
    if(!five || !seven)
        FUNC0("unable to create integer");

    for(i = 0; i < 10; i++) {
        if(FUNC2(array, five))
            FUNC0("unable to append");
    }
    for(i = 0; i < 10; i++) {
        if(FUNC2(array, seven))
            FUNC0("unable to append");
    }

    if(FUNC4(array) != 20)
        FUNC0("array size is invalid after appending");

    if(FUNC3(array))
        FUNC0("unable to clear");

    if(FUNC4(array) != 0)
        FUNC0("array size is invalid after clearing");

    FUNC5(five);
    FUNC5(seven);
    FUNC5(array);
}