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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4()
{
    json_t *value1, *value2;

    const char *complex_json =
"{"
"    \"integer\": 1, "
"    \"real\": 3.141592, "
"    \"string\": \"foobar\", "
"    \"true\": true, "
"    \"object\": {"
"        \"array-in-object\": [1,true,\"foo\",{}],"
"        \"object-in-object\": {\"foo\": \"bar\"}"
"    },"
"    \"array\": [\"foo\", false, null, 1.234]"
"}";

    value1 = FUNC3(complex_json, 0, NULL);
    value2 = FUNC3(complex_json, 0, NULL);
    if(!value1 || !value2)
        FUNC0("unable to parse JSON");
    if(!FUNC2(value1, value2))
        FUNC0("json_equal fails for two inequal strings");

    FUNC1(value1);
    FUNC1(value2);

    /* TODO: There's no negative test case here */
}