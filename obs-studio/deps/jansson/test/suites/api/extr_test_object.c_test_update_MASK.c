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
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9()
{
    json_t *object, *other, *nine, *ten;

    object = FUNC3();
    other = FUNC3();

    nine = FUNC2(9);
    ten = FUNC2(10);

    if(!object || !other)
        FUNC0("unable to create object");
    if(!nine || !ten)
        FUNC0("unable to create integer");


    /* update an empty object with an empty object */

    if(FUNC8(object, other))
        FUNC0("unable to update an emtpy object with an empty object");

    if(FUNC7(object) != 0)
        FUNC0("invalid size after update");

    if(FUNC7(other) != 0)
        FUNC0("invalid size for updater after update");


    /* update an empty object with a nonempty object */

    if(FUNC6(other, "a", ten) ||
       FUNC6(other, "b", ten) ||
       FUNC6(other, "c", ten) ||
       FUNC6(other, "d", ten) ||
       FUNC6(other, "e", ten))
        FUNC0("unable to set value");

    if(FUNC8(object, other))
        FUNC0("unable to update an empty object");

    if(FUNC7(object) != 5)
        FUNC0("invalid size after update");

    if(FUNC5(object, "a") != ten ||
       FUNC5(object, "b") != ten ||
       FUNC5(object, "c") != ten ||
       FUNC5(object, "d") != ten ||
       FUNC5(object, "e") != ten)
        FUNC0("update works incorrectly");


    /* perform the same update again */

    if(FUNC8(object, other))
        FUNC0("unable to update a non-empty object");

    if(FUNC7(object) != 5)
        FUNC0("invalid size after update");

    if(FUNC5(object, "a") != ten ||
       FUNC5(object, "b") != ten ||
       FUNC5(object, "c") != ten ||
       FUNC5(object, "d") != ten ||
       FUNC5(object, "e") != ten)
        FUNC0("update works incorrectly");


    /* update a nonempty object with a nonempty object with both old
       and new keys */

    if(FUNC4(other))
        FUNC0("clear failed");

    if(FUNC6(other, "a", nine) ||
       FUNC6(other, "b", nine) ||
       FUNC6(other, "f", nine) ||
       FUNC6(other, "g", nine) ||
       FUNC6(other, "h", nine))
        FUNC0("unable to set value");

    if(FUNC8(object, other))
        FUNC0("unable to update a nonempty object");

    if(FUNC7(object) != 8)
        FUNC0("invalid size after update");

    if(FUNC5(object, "a") != nine ||
       FUNC5(object, "b") != nine ||
       FUNC5(object, "f") != nine ||
       FUNC5(object, "g") != nine ||
       FUNC5(object, "h") != nine)
        FUNC0("update works incorrectly");

    FUNC1(nine);
    FUNC1(ten);
    FUNC1(other);
    FUNC1(object);
}