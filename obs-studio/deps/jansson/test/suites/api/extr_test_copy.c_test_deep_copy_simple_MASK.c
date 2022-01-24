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
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
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

    if(FUNC2(NULL))
        FUNC0("deep copying NULL doesn't return NULL");

    /* true */
    value = FUNC9();
    copy = FUNC2(value);
    if(value != copy)
        FUNC0("deep copying true failed");
    FUNC1(value);
    FUNC1(copy);

    /* false */
    value = FUNC4();
    copy = FUNC2(value);
    if(value != copy)
        FUNC0("deep copying false failed");
    FUNC1(value);
    FUNC1(copy);

    /* null */
    value = FUNC6();
    copy = FUNC2(value);
    if(value != copy)
        FUNC0("deep copying null failed");
    FUNC1(value);
    FUNC1(copy);

    /* string */
    value = FUNC8("foo");
    if(!value)
        FUNC0("unable to create a string");
    copy = FUNC2(value);
    if(!copy)
        FUNC0("unable to deep copy a string");
    if(copy == value)
        FUNC0("deep copying a string doesn't copy");
    if(!FUNC3(copy, value))
        FUNC0("deep copying a string produces an inequal copy");
    if(value->refcount != 1 || copy->refcount != 1)
        FUNC0("invalid refcounts");
    FUNC1(value);
    FUNC1(copy);

    /* integer */
    value = FUNC5(543);
    if(!value)
        FUNC0("unable to create an integer");
    copy = FUNC2(value);
    if(!copy)
        FUNC0("unable to deep copy an integer");
    if(copy == value)
        FUNC0("deep copying an integer doesn't copy");
    if(!FUNC3(copy, value))
        FUNC0("deep copying an integer produces an inequal copy");
    if(value->refcount != 1 || copy->refcount != 1)
        FUNC0("invalid refcounts");
    FUNC1(value);
    FUNC1(copy);

    /* real */
    value = FUNC7(123e9);
    if(!value)
        FUNC0("unable to create a real");
    copy = FUNC2(value);
    if(!copy)
        FUNC0("unable to deep copy a real");
    if(copy == value)
        FUNC0("deep copying a real doesn't copy");
    if(!FUNC3(copy, value))
        FUNC0("deep copying a real produces an inequal copy");
    if(value->refcount != 1 || copy->refcount != 1)
        FUNC0("invalid refcounts");
    FUNC1(value);
    FUNC1(copy);
}