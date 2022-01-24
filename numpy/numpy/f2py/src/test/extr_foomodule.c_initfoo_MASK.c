#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f2py_foodata_def ; 
 int /*<<< orphan*/  f2py_init_foodata ; 
 int /*<<< orphan*/  f2py_init_mod ; 
 int /*<<< orphan*/  f2py_mod_def ; 
 TYPE_1__* f2py_routines_def ; 
 int /*<<< orphan*/  foo_module_methods ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10() {
    int i;
    PyObject *m, *d, *s, *tmp;
    FUNC9();

    m = FUNC8("foo", foo_module_methods);

    d = FUNC4(m);
    s = FUNC5("This module 'foo' demonstrates the usage of fortranobject.");
    FUNC0(d, "__doc__", s);

    /* Fortran objects: */
    tmp = FUNC2(f2py_mod_def,f2py_init_mod);
    FUNC0(d, "mod", tmp);
    FUNC6(tmp);
    tmp = FUNC2(f2py_foodata_def,f2py_init_foodata);
    FUNC0(d, "foodata", tmp);
    FUNC6(tmp);
    for(i=0;f2py_routines_def[i].name!=NULL;i++) {
        tmp = FUNC3(&f2py_routines_def[i]);
        FUNC0(d, f2py_routines_def[i].name, tmp);
        FUNC6(tmp);
    }

    FUNC6(s);

    if (FUNC1())
        FUNC7("can't initialize module foo");
}