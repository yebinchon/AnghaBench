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
 int /*<<< orphan*/  JSON_ESCAPE_SLASH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8()
{
    /* Test dump escaping slashes */

    json_t *json;
    char *result;

    json = FUNC4();
    FUNC5(json, "url", FUNC6("https://github.com/akheron/jansson"));

    result = FUNC3(json, 0);
    if(!result || FUNC7(result, "{\"url\": \"https://github.com/akheron/jansson\"}"))
        FUNC0("json_dumps failed to not escape slashes");

    FUNC1(result);

    result = FUNC3(json, JSON_ESCAPE_SLASH);
    if(!result || FUNC7(result, "{\"url\": \"https:\\/\\/github.com\\/akheron\\/jansson\"}"))
        FUNC0("json_dumps failed to escape slashes");

    FUNC1(result);
    FUNC2(json);
}