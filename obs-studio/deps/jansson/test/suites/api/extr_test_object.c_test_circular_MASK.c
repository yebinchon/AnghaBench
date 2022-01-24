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
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5()
{
    json_t *object1, *object2;

    object1 = FUNC3();
    object2 = FUNC3();
    if(!object1 || !object2)
        FUNC0("unable to create object");

    /* the simple case is checked */
    if(FUNC4(object1, "a", object1) == 0)
        FUNC0("able to set self");

    /* create circular references */
    if(FUNC4(object1, "a", object2) ||
       FUNC4(object2, "a", object1))
        FUNC0("unable to set value");

    /* circularity is detected when dumping */
    if(FUNC2(object1, 0) != NULL)
        FUNC0("able to dump circulars");

    /* decref twice to deal with the circular references */
    FUNC1(object1);
    FUNC1(object2);
    FUNC1(object1);
}