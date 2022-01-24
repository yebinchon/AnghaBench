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
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9()
{
    json_t *array1, *array2;

    /* the simple cases are checked */

    array1 = FUNC1();
    if(!array1)
        FUNC0("unable to create array");

    if(FUNC2(array1, array1) == 0)
        FUNC0("able to append self");

    if(FUNC4(array1, 0, array1) == 0)
        FUNC0("able to insert self");

    if(FUNC3(array1, FUNC8()))
        FUNC0("failed to append true");

    if(FUNC5(array1, 0, array1) == 0)
        FUNC0("able to set self");

    FUNC6(array1);


    /* create circular references */

    array1 = FUNC1();
    array2 = FUNC1();
    if(!array1 || !array2)
        FUNC0("unable to create array");

    if(FUNC2(array1, array2) ||
       FUNC2(array2, array1))
        FUNC0("unable to append");

    /* circularity is detected when dumping */
    if(FUNC7(array1, 0) != NULL)
        FUNC0("able to dump circulars");

    /* decref twice to deal with the circular references */
    FUNC6(array1);
    FUNC6(array2);
    FUNC6(array1);
}