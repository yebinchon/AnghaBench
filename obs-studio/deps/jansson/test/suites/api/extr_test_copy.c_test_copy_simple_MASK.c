#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int refcount; } ;
typedef  TYPE_1__ json_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 () ; 
 TYPE_1__* FUNC5 (int) ; 
 TYPE_1__* FUNC6 () ; 
 TYPE_1__* FUNC7 (int) ; 
 TYPE_1__* FUNC8 (char*) ; 
 TYPE_1__* FUNC9 () ; 

__attribute__((used)) static void FUNC10(void)
{
    json_t *value, *copy;

    if(FUNC1(NULL))
        FUNC0("copying NULL doesn't return NULL");

    /* true */
    value = FUNC9();
    copy = FUNC1(value);
    if(value != copy)
        FUNC0("copying true failed");
    FUNC2(value);
    FUNC2(copy);

    /* false */
    value = FUNC4();
    copy = FUNC1(value);
    if(value != copy)
        FUNC0("copying false failed");
    FUNC2(value);
    FUNC2(copy);

    /* null */
    value = FUNC6();
    copy = FUNC1(value);
    if(value != copy)
        FUNC0("copying null failed");
    FUNC2(value);
    FUNC2(copy);

    /* string */
    value = FUNC8("foo");
    if(!value)
        FUNC0("unable to create a string");
    copy = FUNC1(value);
    if(!copy)
        FUNC0("unable to copy a string");
    if(copy == value)
        FUNC0("copying a string doesn't copy");
    if(!FUNC3(copy, value))
        FUNC0("copying a string produces an inequal copy");
    if(value->refcount != 1 || copy->refcount != 1)
        FUNC0("invalid refcounts");
    FUNC2(value);
    FUNC2(copy);

    /* integer */
    value = FUNC5(543);
    if(!value)
        FUNC0("unable to create an integer");
    copy = FUNC1(value);
    if(!copy)
        FUNC0("unable to copy an integer");
    if(copy == value)
        FUNC0("copying an integer doesn't copy");
    if(!FUNC3(copy, value))
        FUNC0("copying an integer produces an inequal copy");
    if(value->refcount != 1 || copy->refcount != 1)
        FUNC0("invalid refcounts");
    FUNC2(value);
    FUNC2(copy);

    /* real */
    value = FUNC7(123e9);
    if(!value)
        FUNC0("unable to create a real");
    copy = FUNC1(value);
    if(!copy)
        FUNC0("unable to copy a real");
    if(copy == value)
        FUNC0("copying a real doesn't copy");
    if(!FUNC3(copy, value))
        FUNC0("copying a real produces an inequal copy");
    if(value->refcount != 1 || copy->refcount != 1)
        FUNC0("invalid refcounts");
    FUNC2(value);
    FUNC2(copy);
}