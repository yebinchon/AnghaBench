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
typedef  int /*<<< orphan*/  hashitem_T ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC4(hashitem_T *hi)
{
    PyObject	*keyObject;
    PyObject	*valObject;
    PyObject	*ret;

    if (!(keyObject = FUNC2(hi)))
	return NULL;

    if (!(valObject = FUNC3(hi)))
    {
	FUNC1(keyObject);
	return NULL;
    }

    ret = FUNC0("(OO)", keyObject, valObject);

    FUNC1(keyObject);
    FUNC1(valObject);

    return ret;
}