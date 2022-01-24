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
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5()
{
    json_t *json;
    int result;

    result = FUNC2(NULL, "", 0);
    if (result != -1)
        FUNC0("json_dump_file succeeded with invalid args");

    json = FUNC3();
    result = FUNC2(json, "json_dump_file.json", 0);
    if (result != 0)
        FUNC0("json_dump_file failed");

    FUNC1(json);
    FUNC4("json_dump_file.json");
}