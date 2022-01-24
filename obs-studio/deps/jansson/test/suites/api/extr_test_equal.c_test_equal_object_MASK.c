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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8()
{
    json_t *object1, *object2;

    object1 = FUNC4();
    object2 = FUNC4();
    if(!object1 || !object2)
        FUNC0("unable to create objects");

    if(!FUNC2(object1, object2))
        FUNC0("json_equal fails for two empty objects");

    FUNC6(object1, "a", FUNC3(1));
    FUNC6(object2, "a", FUNC3(1));
    FUNC6(object1, "b", FUNC7("foo"));
    FUNC6(object2, "b", FUNC7("foo"));
    FUNC6(object1, "c", FUNC3(2));
    FUNC6(object2, "c", FUNC3(2));
    if(!FUNC2(object1, object2))
        FUNC0("json_equal fails for two equal objects");

    FUNC5(object2, "c");
    if(FUNC2(object1, object2))
        FUNC0("json_equal fails for two inequal objects");

    FUNC6(object2, "c", FUNC3(3));
    if(FUNC2(object1, object2))
        FUNC0("json_equal fails for two inequal objects");

    FUNC5(object2, "c");
    FUNC6(object2, "d", FUNC3(2));
    if(FUNC2(object1, object2))
        FUNC0("json_equal fails for two inequal objects");

    FUNC1(object1);
    FUNC1(object2);
}