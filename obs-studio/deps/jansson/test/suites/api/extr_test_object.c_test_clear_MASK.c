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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7()
{
    json_t *object, *ten;

    object = FUNC3();
    ten = FUNC2(10);

    if(!object)
        FUNC0("unable to create object");
    if(!ten)
        FUNC0("unable to create integer");

    if(FUNC5(object, "a", ten) ||
       FUNC5(object, "b", ten) ||
       FUNC5(object, "c", ten) ||
       FUNC5(object, "d", ten) ||
       FUNC5(object, "e", ten))
        FUNC0("unable to set value");

    if(FUNC6(object) != 5)
        FUNC0("invalid size");

    FUNC4(object);

    if(FUNC6(object) != 0)
        FUNC0("invalid size after clear");

    FUNC1(ten);
    FUNC1(object);
}