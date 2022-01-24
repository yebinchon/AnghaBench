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
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
    const char *json_array_text = "[1, \"foo\", 3.141592, {\"foo\": \"bar\"}]";

    json_t *array, *copy;
    size_t i;

    array = FUNC6(json_array_text, 0, NULL);
    if(!array)
        FUNC0("unable to parse an array");

    copy = FUNC4(array);
    if(!copy)
        FUNC0("unable to deep copy an array");
    if(copy == array)
        FUNC0("deep copying an array doesn't copy");
    if(!FUNC5(copy, array))
        FUNC0("deep copying an array produces an inequal copy");

    for(i = 0; i < FUNC2(copy); i++)
    {
        if(FUNC1(array, i) == FUNC1(copy, i))
            FUNC0("deep copying an array doesn't copy its elements");
    }

    FUNC3(array);
    FUNC3(copy);
}