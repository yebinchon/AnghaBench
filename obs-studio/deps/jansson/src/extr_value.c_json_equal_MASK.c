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
#define  JSON_ARRAY 132 
#define  JSON_INTEGER 131 
#define  JSON_OBJECT 130 
#define  JSON_REAL 129 
#define  JSON_STRING 128 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(json_t *json1, json_t *json2)
{
    if(!json1 || !json2)
        return 0;

    if(FUNC5(json1) != FUNC5(json2))
        return 0;

    /* this covers true, false and null as they are singletons */
    if(json1 == json2)
        return 1;

    switch(FUNC5(json1)) {
        case JSON_OBJECT:
            return FUNC2(json1, json2);
        case JSON_ARRAY:
            return FUNC0(json1, json2);
        case JSON_STRING:
            return FUNC4(json1, json2);
        case JSON_INTEGER:
            return FUNC1(json1, json2);
        case JSON_REAL:
            return FUNC3(json1, json2);
        default:
            return 0;
    }
}