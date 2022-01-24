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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8()
{
    json_t *array1, *array2;

    array1 = FUNC1();
    array2 = FUNC1();
    if(!array1 || !array2)
        FUNC0("unable to create arrays");

    if(!FUNC5(array1, array2))
        FUNC0("json_equal fails for two empty arrays");

    FUNC2(array1, FUNC6(1));
    FUNC2(array2, FUNC6(1));
    FUNC2(array1, FUNC7("foo"));
    FUNC2(array2, FUNC7("foo"));
    FUNC2(array1, FUNC6(2));
    FUNC2(array2, FUNC6(2));
    if(!FUNC5(array1, array2))
        FUNC0("json_equal fails for two equal arrays");

    FUNC3(array2, 2);
    if(FUNC5(array1, array2))
        FUNC0("json_equal fails for two inequal arrays");

    FUNC2(array2, FUNC6(3));
    if(FUNC5(array1, array2))
        FUNC0("json_equal fails for two inequal arrays");

    FUNC4(array1);
    FUNC4(array2);
}