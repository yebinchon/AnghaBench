#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* string; void* error; } ;
typedef  TYPE_1__ ERR_STRING_DATA ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 void* FUNC2 (unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_err_strings_init ; 
 int /*<<< orphan*/  err_string_init ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 

const char *FUNC5(unsigned long e)
{
    ERR_STRING_DATA d, *p = NULL;
    unsigned long l, r;

    if (!FUNC3(&err_string_init, do_err_strings_init)) {
        return NULL;
    }

    l = FUNC0(e);
    r = FUNC1(e);
    d.error = FUNC2(l, 0, r);
    p = FUNC4(&d);
    if (p == NULL) {
        d.error = FUNC2(0, 0, r);
        p = FUNC4(&d);
    }
    return ((p == NULL) ? NULL : p->string);
}