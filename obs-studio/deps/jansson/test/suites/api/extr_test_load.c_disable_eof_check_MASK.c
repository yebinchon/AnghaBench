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
 int /*<<< orphan*/  JSON_DISABLE_EOF_CHECK ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4()
{
    json_error_t error;
    json_t *json;

    const char *text = "{\"foo\": 1} garbage";

    if(FUNC3(text, 0, &error))
        FUNC1("json_loads did not detect garbage after JSON text");
    FUNC0("end of file expected near 'garbage'", "<string>", 1, 18, 18);

    json = FUNC3(text, JSON_DISABLE_EOF_CHECK, &error);
    if(!json)
        FUNC1("json_loads failed with JSON_DISABLE_EOF_CHECK");

    FUNC2(json);
}