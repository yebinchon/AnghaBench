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
#define  JSON_ARRAY 135 
#define  JSON_FALSE 134 
#define  JSON_INTEGER 133 
#define  JSON_NULL 132 
#define  JSON_OBJECT 131 
#define  JSON_REAL 130 
#define  JSON_STRING 129 
#define  JSON_TRUE 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

json_t *FUNC6(json_t *json)
{
    if(!json)
        return NULL;

    switch(FUNC5(json)) {
        case JSON_OBJECT:
            return FUNC2(json);
        case JSON_ARRAY:
            return FUNC0(json);
        case JSON_STRING:
            return FUNC4(json);
        case JSON_INTEGER:
            return FUNC1(json);
        case JSON_REAL:
            return FUNC3(json);
        case JSON_TRUE:
        case JSON_FALSE:
        case JSON_NULL:
            return json;
        default:
            return NULL;
    }

    return NULL;
}