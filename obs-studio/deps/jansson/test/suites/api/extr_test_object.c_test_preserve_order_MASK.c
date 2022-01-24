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
 int /*<<< orphan*/  JSON_PRESERVE_ORDER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

__attribute__((used)) static void FUNC10()
{
    json_t *object;
    char *result;

    const char *expected = "{\"foobar\": 1, \"bazquux\": 6, \"lorem ipsum\": 3, \"sit amet\": 5, \"helicopter\": 7}";

    object = FUNC6();

    FUNC8(object, "foobar", FUNC5(1));
    FUNC8(object, "bazquux", FUNC5(2));
    FUNC8(object, "lorem ipsum", FUNC5(3));
    FUNC8(object, "dolor", FUNC5(4));
    FUNC8(object, "sit amet", FUNC5(5));

    /* changing a value should preserve the order */
    FUNC8(object, "bazquux", FUNC5(6));

    /* deletion shouldn't change the order of others */
    FUNC7(object, "dolor");

    /* add a new item just to make sure */
    FUNC8(object, "helicopter", FUNC5(7));

    result = FUNC4(object, JSON_PRESERVE_ORDER);

    if(FUNC9(expected, result) != 0) {
        FUNC1(stderr, "%s != %s", expected, result);
        FUNC0("JSON_PRESERVE_ORDER doesn't work");
    }

    FUNC2(result);
    FUNC3(object);
}