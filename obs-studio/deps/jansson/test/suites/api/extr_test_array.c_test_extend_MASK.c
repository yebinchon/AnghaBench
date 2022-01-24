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
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(void)
{
    json_t *array1, *array2, *five, *seven;
    int i;

    array1 = FUNC1();
    array2 = FUNC1();
    five = FUNC7(5);
    seven = FUNC7(7);

    if(!array1 || !array2)
        FUNC0("unable to create array");
    if(!five || !seven)
        FUNC0("unable to create integer");

    for(i = 0; i < 10; i++) {
        if(FUNC2(array1, five))
            FUNC0("unable to append");
    }
    for(i = 0; i < 10; i++) {
        if(FUNC2(array2, seven))
            FUNC0("unable to append");
    }

    if(FUNC5(array1) != 10 || FUNC5(array2) != 10)
        FUNC0("array size is invalid after appending");

    if(FUNC3(array1, array2))
        FUNC0("unable to extend");

    for(i = 0; i < 10; i++) {
        if(FUNC4(array1, i) != five)
            FUNC0("invalid array contents after extending");
    }
    for(i = 10; i < 20; i++) {
        if(FUNC4(array1, i) != seven)
            FUNC0("invalid array contents after extending");
    }

    FUNC6(five);
    FUNC6(seven);
    FUNC6(array1);
    FUNC6(array2);
}