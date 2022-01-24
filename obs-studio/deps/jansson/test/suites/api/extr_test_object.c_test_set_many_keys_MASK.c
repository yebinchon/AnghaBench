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
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6()
{
    json_t *object, *value;
    const char *keys = "abcdefghijklmnopqrstuvwxyz";
    char buf[2];
    size_t i;

    object = FUNC2();
    if (!object)
        FUNC0("unable to create object");

    value = FUNC4("a");
    if (!value)
        FUNC0("unable to create string");

    buf[1] = '\0';
    for (i = 0; i < FUNC5(keys); i++) {
        buf[0] = keys[i];
        if (FUNC3(object, buf, value))
            FUNC0("unable to set object key");
    }

    FUNC1(object);
    FUNC1(value);
}