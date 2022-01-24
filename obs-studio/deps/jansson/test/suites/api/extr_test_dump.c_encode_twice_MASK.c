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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static void FUNC10()
{
    /* Encode an empty object/array, add an item, encode again */

    json_t *json;
    char *result;

    json = FUNC7();
    result = FUNC5(json, 0);
    if(!result || FUNC9(result, "{}"))
      FUNC0("json_dumps failed");
    FUNC1(result);

    FUNC8(json, "foo", FUNC6(5));
    result = FUNC5(json, 0);
    if(!result || FUNC9(result, "{\"foo\": 5}"))
      FUNC0("json_dumps failed");
    FUNC1(result);

    FUNC4(json);

    json = FUNC2();
    result = FUNC5(json, 0);
    if(!result || FUNC9(result, "[]"))
      FUNC0("json_dumps failed");
    FUNC1(result);

    FUNC3(json, FUNC6(5));
    result = FUNC5(json, 0);
    if(!result || FUNC9(result, "[5]"))
      FUNC0("json_dumps failed");
    FUNC1(result);

    FUNC4(json);
}