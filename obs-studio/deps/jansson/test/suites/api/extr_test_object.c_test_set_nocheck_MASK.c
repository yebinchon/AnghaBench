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
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9()
{
    json_t *object, *string;

    object = FUNC4();
    string = FUNC8("bar");

    if(!object)
        FUNC0("unable to create object");
    if(!string)
        FUNC0("unable to create string");

    if(FUNC7(object, "foo", string))
        FUNC0("json_object_set_nocheck failed");
    if(FUNC5(object, "foo") != string)
        FUNC0("json_object_get after json_object_set_nocheck failed");

    /* invalid UTF-8 in key */
    if(FUNC7(object, "a\xefz", string))
        FUNC0("json_object_set_nocheck failed for invalid UTF-8");
    if(FUNC5(object, "a\xefz") != string)
        FUNC0("json_object_get after json_object_set_nocheck failed");

    if(FUNC6(object, "bax", FUNC2(123)))
        FUNC0("json_object_set_new_nocheck failed");
    if(FUNC3(FUNC5(object, "bax")) != 123)
        FUNC0("json_object_get after json_object_set_new_nocheck failed");

    /* invalid UTF-8 in key */
    if(FUNC6(object, "asdf\xfe", FUNC2(321)))
        FUNC0("json_object_set_new_nocheck failed for invalid UTF-8");
    if(FUNC3(FUNC5(object, "asdf\xfe")) != 321)
        FUNC0("json_object_get after json_object_set_new_nocheck failed");

    FUNC1(string);
    FUNC1(object);
}