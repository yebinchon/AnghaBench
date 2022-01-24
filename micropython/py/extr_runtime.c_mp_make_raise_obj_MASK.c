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
typedef  int /*<<< orphan*/  mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mp_type_TypeError ; 

mp_obj_t FUNC5(mp_obj_t o) {
    FUNC0("raise %p\n", o);
    if (FUNC3(o)) {
        // o is an exception type (it is derived from BaseException (or is BaseException))
        // create and return a new exception instance by calling o
        // TODO could have an option to disable traceback, then builtin exceptions (eg TypeError)
        // could have const instances in ROM which we return here instead
        return FUNC1(o, 0, 0, NULL);
    } else if (FUNC2(o)) {
        // o is an instance of an exception, so use it as the exception
        return o;
    } else {
        // o cannot be used as an exception, so return a type error (which will be raised by the caller)
        return FUNC4(&mp_type_TypeError, "exceptions must derive from BaseException");
    }
}