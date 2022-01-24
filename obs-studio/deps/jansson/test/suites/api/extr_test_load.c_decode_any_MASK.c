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
typedef  int /*<<< orphan*/  json_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_DECODE_ANY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7()
{
    json_t *json;
    json_error_t error;

    json = FUNC6("\"foo\"", JSON_DECODE_ANY, &error);
    if (!json || !FUNC4(json))
        FUNC0("json_load decoded any failed - string");
    FUNC1(json);

    json = FUNC6("42", JSON_DECODE_ANY, &error);
    if (!json || !FUNC2(json))
        FUNC0("json_load decoded any failed - integer");
    FUNC1(json);

    json = FUNC6("true", JSON_DECODE_ANY, &error);
    if (!json || !FUNC5(json))
        FUNC0("json_load decoded any failed - boolean");
    FUNC1(json);

    json = FUNC6("null", JSON_DECODE_ANY, &error);
    if (!json || !FUNC3(json))
        FUNC0("json_load decoded any failed - null");
    FUNC1(json);
}