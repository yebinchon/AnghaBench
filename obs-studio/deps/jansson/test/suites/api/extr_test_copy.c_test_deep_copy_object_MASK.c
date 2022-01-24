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
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (void*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC9 (void*) ; 
 scalar_t__ FUNC10 (char const*,char const*) ; 

__attribute__((used)) static void FUNC11(void)
{
    const char *json_object_text =
        "{\"foo\": \"bar\", \"a\": 1, \"b\": 3.141592, \"c\": [1,2,3,4]}";

    const char *keys[] = {"foo", "a", "b", "c"};
    int i;

    json_t *object, *copy;
    void *iter;

    object = FUNC4(json_object_text, 0, NULL);
    if(!object)
        FUNC0("unable to parse an object");

    copy = FUNC2(object);
    if(!copy)
        FUNC0("unable to deep copy an object");
    if(copy == object)
        FUNC0("deep copying an object doesn't copy");
    if(!FUNC3(copy, object))
        FUNC0("deep copying an object produces an inequal copy");

    i = 0;
    iter = FUNC6(object);
    while(iter)
    {
        const char *key;
        json_t *value1, *value2;

        key = FUNC7(iter);
        value1 = FUNC9(iter);
        value2 = FUNC5(copy, key);

        if(value1 == value2)
            FUNC0("deep copying an object doesn't copy its items");

        if (FUNC10(key, keys[i]) != 0)
            FUNC0("deep copying an object doesn't preserve key order");

        iter = FUNC8(object, iter);
        i++;
    }

    FUNC1(object);
    FUNC1(copy);
}