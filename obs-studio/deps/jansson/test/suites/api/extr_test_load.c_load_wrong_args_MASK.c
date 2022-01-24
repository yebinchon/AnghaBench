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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5()
{
    json_t *json;
    json_error_t error;

    json = FUNC4(NULL, 0, &error);
    if (json)
        FUNC0("json_loads should return NULL if the first argument is NULL");

    json = FUNC2(NULL, 0, 0, &error);
    if (json)
        FUNC0("json_loadb should return NULL if the first argument is NULL");

    json = FUNC3(NULL, 0, &error);
    if (json)
        FUNC0("json_loadf should return NULL if the first argument is NULL");

    json = FUNC1(NULL, 0, &error);
    if (json)
        FUNC0("json_loadf should return NULL if the first argument is NULL");
}