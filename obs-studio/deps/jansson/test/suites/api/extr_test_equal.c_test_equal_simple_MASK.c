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
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (double) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

__attribute__((used)) static void FUNC7()
{
    json_t *value1, *value2;

    if(FUNC2(NULL, NULL))
        FUNC0("json_equal fails for two NULLs");

    value1 = FUNC6();
    if(FUNC2(value1, NULL) || FUNC2(NULL, value1))
        FUNC0("json_equal fails for NULL");

    /* this covers true, false and null as they are singletons */
    if(!FUNC2(value1, value1))
        FUNC0("identical objects are not equal");
    FUNC1(value1);

    /* integer */
    value1 = FUNC3(1);
    value2 = FUNC3(1);
    if(!value1 || !value2)
        FUNC0("unable to create integers");
    if(!FUNC2(value1, value2))
        FUNC0("json_equal fails for two equal integers");
    FUNC1(value2);

    value2 = FUNC3(2);
    if(!value2)
        FUNC0("unable to create an integer");
    if(FUNC2(value1, value2))
        FUNC0("json_equal fails for two inequal integers");

    FUNC1(value1);
    FUNC1(value2);

    /* real */
    value1 = FUNC4(1.2);
    value2 = FUNC4(1.2);
    if(!value1 || !value2)
        FUNC0("unable to create reals");
    if(!FUNC2(value1, value2))
        FUNC0("json_equal fails for two equal reals");
    FUNC1(value2);

    value2 = FUNC4(3.141592);
    if(!value2)
        FUNC0("unable to create an real");
    if(FUNC2(value1, value2))
        FUNC0("json_equal fails for two inequal reals");

    FUNC1(value1);
    FUNC1(value2);

    /* string */
    value1 = FUNC5("foo");
    value2 = FUNC5("foo");
    if(!value1 || !value2)
        FUNC0("unable to create strings");
    if(!FUNC2(value1, value2))
        FUNC0("json_equal fails for two equal strings");
    FUNC1(value2);

    value2 = FUNC5("bar");
    if(!value2)
        FUNC0("unable to create an string");
    if(FUNC2(value1, value2))
        FUNC0("json_equal fails for two inequal strings");

    FUNC1(value1);
    FUNC1(value2);
}