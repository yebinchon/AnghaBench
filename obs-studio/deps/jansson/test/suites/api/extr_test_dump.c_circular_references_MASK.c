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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char*,char*) ; 

__attribute__((used)) static void FUNC15()
{
    /* Construct a JSON object/array with a circular reference:

       object: {"a": {"b": {"c": <circular reference to $.a>}}}
       array: [[[<circular reference to the $[0] array>]]]

       Encode it, remove the circular reference and encode again.
    */

    json_t *json;
    char *result;

    json = FUNC9();
    FUNC13(json, "a", FUNC9());
    FUNC13(FUNC11(json, "a"), "b", FUNC9());
    FUNC12(FUNC11(FUNC11(json, "a"), "b"), "c",
                    FUNC11(json, "a"));

    if(FUNC8(json, 0))
        FUNC0("json_dumps encoded a circular reference!");

    FUNC10(FUNC11(FUNC11(json, "a"), "b"), "c");

    result = FUNC8(json, 0);
    if(!result || FUNC14(result, "{\"a\": {\"b\": {}}}"))
        FUNC0("json_dumps failed!");
    FUNC1(result);

    FUNC7(json);

    json = FUNC2();
    FUNC4(json, FUNC2());
    FUNC4(FUNC5(json, 0), FUNC2());
    FUNC3(FUNC5(FUNC5(json, 0), 0),
                      FUNC5(json, 0));

    if(FUNC8(json, 0))
        FUNC0("json_dumps encoded a circular reference!");

    FUNC6(FUNC5(FUNC5(json, 0), 0), 0);

    result = FUNC8(json, 0);
    if(!result || FUNC14(result, "[[[]]]"))
        FUNC0("json_dumps failed!");
    FUNC1(result);

    FUNC7(json);
}