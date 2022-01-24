#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ name; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ FunctionObject ;

/* Variables and functions */
 int /*<<< orphan*/  FunctionAttrs ; 
 int /*<<< orphan*/  FunctionMethods ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static PyObject *
FUNC4(PyObject *self, char *name)
{
    FunctionObject	*this = (FunctionObject *)(self);

    if (FUNC3(name, "name") == 0)
	return FUNC1((char *)(this->name));
    else if (FUNC3(name, "__members__") == 0)
	return FUNC0(NULL, FunctionAttrs);
    else
	return FUNC2(FunctionMethods, self, name);
}