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
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11()
{
    json_t *object, *string, *other_string, *value;

    object = FUNC5();
    string = FUNC10("test");
    other_string = FUNC10("other");

    if(!object)
        FUNC0("unable to create object");
    if(!string || !other_string)
        FUNC0("unable to create string");

    if(FUNC7(object, "a"))
        FUNC0("value for nonexisting key");

    if(FUNC8(object, "a", string))
        FUNC0("unable to set value");

    if(!FUNC8(object, NULL, string))
        FUNC0("able to set NULL key");

    if(FUNC6(object, "a"))
        FUNC0("unable to del the only key");

    if(FUNC8(object, "a", string))
        FUNC0("unable to set value");

    if(!FUNC8(object, "a", NULL))
        FUNC0("able to set NULL value");

    /* invalid UTF-8 in key */
    if(!FUNC8(object, "a\xefz", string))
        FUNC0("able to set invalid unicode key");

    value = FUNC7(object, "a");
    if(!value)
        FUNC0("no value for existing key");
    if(value != string)
        FUNC0("got different value than what was added");

    /* "a", "lp" and "px" collide in a five-bucket hashtable */
    if(FUNC8(object, "b", string) ||
       FUNC8(object, "lp", string) ||
       FUNC8(object, "px", string))
        FUNC0("unable to set value");

    value = FUNC7(object, "a");
    if(!value)
        FUNC0("no value for existing key");
    if(value != string)
        FUNC0("got different value than what was added");

    if(FUNC8(object, "a", other_string))
        FUNC0("unable to replace an existing key");

    value = FUNC7(object, "a");
    if(!value)
        FUNC0("no value for existing key");
    if(value != other_string)
        FUNC0("got different value than what was set");

    if(!FUNC6(object, "nonexisting"))
        FUNC0("able to delete a nonexisting key");

    if(FUNC6(object, "px"))
        FUNC0("unable to delete an existing key");

    if(FUNC6(object, "a"))
        FUNC0("unable to delete an existing key");

    if(FUNC6(object, "lp"))
        FUNC0("unable to delete an existing key");


    /* add many keys to initiate rehashing */

    if(FUNC8(object, "a", string))
        FUNC0("unable to set value");

    if(FUNC8(object, "lp", string))
        FUNC0("unable to set value");

    if(FUNC8(object, "px", string))
        FUNC0("unable to set value");

    if(FUNC8(object, "c", string))
        FUNC0("unable to set value");

    if(FUNC8(object, "d", string))
        FUNC0("unable to set value");

    if(FUNC8(object, "e", string))
        FUNC0("unable to set value");


    if(FUNC9(object, "foo", FUNC2(123)))
        FUNC0("unable to set new value");

    value = FUNC7(object, "foo");
    if(!FUNC4(value) || FUNC3(value) != 123)
        FUNC0("json_object_set_new works incorrectly");

    if(!FUNC9(object, NULL, FUNC2(432)))
        FUNC0("able to set_new NULL key");

    if(!FUNC9(object, "foo", NULL))
        FUNC0("able to set_new NULL value");

    FUNC1(string);
    FUNC1(other_string);
    FUNC1(object);
}