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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_ENCODE_ANY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8()
{
    /* Encoding anything other than array or object should only
     * succeed if the JSON_ENCODE_ANY flag is used */

    json_t *json;
    FILE *fp = NULL;
    char *result;

    json = FUNC6("foo");
    if(FUNC4(json, 0) != NULL)
        FUNC0("json_dumps encoded a string!");
    if(FUNC3(json, fp, 0) == 0)
        FUNC0("json_dumpf encoded a string!");

    result = FUNC4(json, JSON_ENCODE_ANY);
    if(!result || FUNC7(result, "\"foo\"") != 0)
        FUNC0("json_dumps failed to encode a string with JSON_ENCODE_ANY");

    FUNC1(result);
    FUNC2(json);

    json = FUNC5(42);
    if(FUNC4(json, 0) != NULL)
        FUNC0("json_dumps encoded an integer!");
    if(FUNC3(json, fp, 0) == 0)
        FUNC0("json_dumpf encoded an integer!");

    result = FUNC4(json, JSON_ENCODE_ANY);
    if(!result || FUNC7(result, "42") != 0)
        FUNC0("json_dumps failed to encode an integer with JSON_ENCODE_ANY");

    FUNC1(result);
    FUNC2(json);


}