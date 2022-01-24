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
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(void)
{
    json_t *array, *five, *seven;
    int i;

    array = FUNC1();
    five = FUNC7(5);
    seven = FUNC7(7);

    if(!array)
        FUNC0("unable to create array");
    if(!five)
        FUNC0("unable to create integer");
    if(!seven)
        FUNC0("unable to create integer");


    if(!FUNC4(array, 0))
        FUNC0("able to remove an unexisting index");


    if(FUNC2(array, five))
        FUNC0("unable to append");

    if(!FUNC4(array, 1))
        FUNC0("able to remove an unexisting index");

    if(FUNC4(array, 0))
        FUNC0("unable to remove");

    if(FUNC5(array) != 0)
        FUNC0("array size is invalid after removing");


    if(FUNC2(array, five) ||
       FUNC2(array, seven) ||
       FUNC2(array, five) ||
       FUNC2(array, seven))
        FUNC0("unable to append");

    if(FUNC4(array, 2))
        FUNC0("unable to remove");

    if(FUNC5(array) != 3)
        FUNC0("array size is invalid after removing");

    if(FUNC3(array, 0) != five ||
       FUNC3(array, 1) != seven ||
       FUNC3(array, 2) != seven)
        FUNC0("remove works incorrectly");

    FUNC6(array);

    array = FUNC1();
    for(i = 0; i < 4; i++) {
        FUNC2(array, five);
        FUNC2(array, seven);
    }
    if(FUNC5(array) != 8)
        FUNC0("unable to append 8 items to array");

    /* Remove an element from a "full" array. */
    FUNC4(array, 5);

    FUNC6(five);
    FUNC6(seven);
    FUNC6(array);
}