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
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(void)
{
    json_t *array, *five, *seven, *value;
    size_t i;

    array = FUNC1();
    five = FUNC9(5);
    seven = FUNC9(7);

    if(!array)
        FUNC0("unable to create array");
    if(!five || !seven)
        FUNC0("unable to create integer");

    if(FUNC7(array) != 0)
        FUNC0("empty array has nonzero size");

    if(!FUNC2(array, NULL))
        FUNC0("able to append NULL");

    if(FUNC2(array, five))
        FUNC0("unable to append");

    if(FUNC7(array) != 1)
        FUNC0("wrong array size");

    value = FUNC4(array, 0);
    if(!value)
        FUNC0("unable to get item");
    if(value != five)
        FUNC0("got wrong value");

    if(FUNC2(array, seven))
        FUNC0("unable to append value");

    if(FUNC7(array) != 2)
        FUNC0("wrong array size");

    value = FUNC4(array, 1);
    if(!value)
        FUNC0("unable to get item");
    if(value != seven)
        FUNC0("got wrong value");

    if(FUNC5(array, 0, seven))
        FUNC0("unable to set value");

    if(!FUNC5(array, 0, NULL))
        FUNC0("able to set NULL");

    if(FUNC7(array) != 2)
        FUNC0("wrong array size");

    value = FUNC4(array, 0);
    if(!value)
        FUNC0("unable to get item");
    if(value != seven)
        FUNC0("got wrong value");

    if(FUNC4(array, 2) != NULL)
        FUNC0("able to get value out of bounds");

    if(!FUNC5(array, 2, seven))
        FUNC0("able to set value out of bounds");

    for(i = 2; i < 30; i++) {
        if(FUNC2(array, seven))
            FUNC0("unable to append value");

        if(FUNC7(array) != i + 1)
            FUNC0("wrong array size");
    }

    for(i = 0; i < 30; i++) {
        value = FUNC4(array, i);
        if(!value)
            FUNC0("unable to get item");
        if(value != seven)
            FUNC0("got wrong value");
    }

    if(FUNC6(array, 15, FUNC9(123)))
        FUNC0("unable to set new value");

    value = FUNC4(array, 15);
    if(!FUNC11(value) || FUNC10(value) != 123)
        FUNC0("json_array_set_new works incorrectly");

    if(!FUNC6(array, 15, NULL))
        FUNC0("able to set_new NULL value");

    if(FUNC3(array, FUNC9(321)))
        FUNC0("unable to append new value");

    value = FUNC4(array, FUNC7(array) - 1);
    if(!FUNC11(value) || FUNC10(value) != 321)
        FUNC0("json_array_append_new works incorrectly");

    if(!FUNC3(array, NULL))
        FUNC0("able to append_new NULL value");

    FUNC8(five);
    FUNC8(seven);
    FUNC8(array);
}