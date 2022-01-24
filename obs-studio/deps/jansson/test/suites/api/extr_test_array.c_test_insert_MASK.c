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
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void)
{
    json_t *array, *five, *seven, *eleven, *value;
    int i;

    array = FUNC1();
    five = FUNC7(5);
    seven = FUNC7(7);
    eleven = FUNC7(11);

    if(!array)
        FUNC0("unable to create array");
    if(!five || !seven || !eleven)
        FUNC0("unable to create integer");


    if(!FUNC3(array, 1, five))
        FUNC0("able to insert value out of bounds");


    if(FUNC3(array, 0, five))
        FUNC0("unable to insert value in an empty array");

    if(FUNC2(array, 0) != five)
        FUNC0("json_array_insert works incorrectly");

    if(FUNC5(array) != 1)
        FUNC0("array size is invalid after insertion");


    if(FUNC3(array, 1, seven))
        FUNC0("unable to insert value at the end of an array");

    if(FUNC2(array, 0) != five)
        FUNC0("json_array_insert works incorrectly");

    if(FUNC2(array, 1) != seven)
        FUNC0("json_array_insert works incorrectly");

    if(FUNC5(array) != 2)
        FUNC0("array size is invalid after insertion");


    if(FUNC3(array, 1, eleven))
        FUNC0("unable to insert value in the middle of an array");

    if(FUNC2(array, 0) != five)
        FUNC0("json_array_insert works incorrectly");

    if(FUNC2(array, 1) != eleven)
        FUNC0("json_array_insert works incorrectly");

    if(FUNC2(array, 2) != seven)
        FUNC0("json_array_insert works incorrectly");

    if(FUNC5(array) != 3)
        FUNC0("array size is invalid after insertion");


    if(FUNC4(array, 2, FUNC7(123)))
        FUNC0("unable to insert value in the middle of an array");

    value = FUNC2(array, 2);
    if(!FUNC9(value) || FUNC8(value) != 123)
        FUNC0("json_array_insert_new works incorrectly");

    if(FUNC5(array) != 4)
        FUNC0("array size is invalid after insertion");


    for(i = 0; i < 20; i++) {
        if(FUNC3(array, 0, seven))
            FUNC0("unable to insert value at the begining of an array");
    }

    for(i = 0; i < 20; i++) {
        if(FUNC2(array, i) != seven)
            FUNC0("json_aray_insert works incorrectly");
    }

    if(FUNC5(array) != 24)
        FUNC0("array size is invalid after loop insertion");

    FUNC6(five);
    FUNC6(seven);
    FUNC6(eleven);
    FUNC6(array);
}