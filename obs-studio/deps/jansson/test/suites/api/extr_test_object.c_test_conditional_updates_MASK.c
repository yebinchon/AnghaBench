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
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*,int,char*,int) ; 

__attribute__((used)) static void FUNC8()
{
    json_t *object, *other;

    object = FUNC7("{sisi}", "foo", 1, "bar", 2);
    other = FUNC7("{sisi}", "foo", 3, "baz", 4);

    if(FUNC5(object, other))
        FUNC0("json_object_update_existing failed");

    if(FUNC4(object) != 2)
        FUNC0("json_object_update_existing added new items");

    if(FUNC2(FUNC3(object, "foo")) != 3)
        FUNC0("json_object_update_existing failed to update existing key");

    if(FUNC2(FUNC3(object, "bar")) != 2)
        FUNC0("json_object_update_existing updated wrong key");

    FUNC1(object);

    object = FUNC7("{sisi}", "foo", 1, "bar", 2);

    if(FUNC6(object, other))
        FUNC0("json_object_update_missing failed");

    if(FUNC4(object) != 3)
        FUNC0("json_object_update_missing didn't add new items");

    if(FUNC2(FUNC3(object, "foo")) != 1)
        FUNC0("json_object_update_missing updated existing key");

    if(FUNC2(FUNC3(object, "bar")) != 2)
        FUNC0("json_object_update_missing updated wrong key");

    if(FUNC2(FUNC3(object, "baz")) != 4)
        FUNC0("json_object_update_missing didn't add new items");

    FUNC1(object);
    FUNC1(other);
}