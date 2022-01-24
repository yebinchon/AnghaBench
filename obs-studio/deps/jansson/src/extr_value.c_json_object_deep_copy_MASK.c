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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static json_t *FUNC7(const json_t *object)
{
    json_t *result;
    void *iter;

    result = FUNC1();
    if(!result)
        return NULL;

    /* Cannot use json_object_foreach because object has to be cast
       non-const */
    iter = FUNC2((json_t *)object);
    while(iter) {
        const char *key;
        const json_t *value;
        key = FUNC3(iter);
        value = FUNC5(iter);

        FUNC6(result, key, FUNC0(value));
        iter = FUNC4((json_t *)object, iter);
    }

    return result;
}