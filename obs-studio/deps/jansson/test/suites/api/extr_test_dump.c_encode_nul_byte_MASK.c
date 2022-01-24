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
 int /*<<< orphan*/  JSON_ENCODE_ANY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

__attribute__((used)) static void FUNC6()
{
    json_t *json;
    char *result;

    json = FUNC4("nul byte \0 in string", 20);
    result = FUNC3(json, JSON_ENCODE_ANY);
    if(!result || FUNC5(result, "\"nul byte \\u0000 in string\"", 27))
        FUNC0("json_dumps failed to dump an embedded NUL byte");

    FUNC1(result);
    FUNC2(json);
}