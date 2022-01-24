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
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  DictionaryObject ;

/* Variables and functions */
 int /*<<< orphan*/  DICT_FLAG_RETURN_BOOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_True ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(DictionaryObject *self, PyObject *keyObject)
{
    PyObject	*rObj = FUNC1(self, keyObject, DICT_FLAG_RETURN_BOOL);
    int		ret;

    if (rObj == NULL)
	return -1;

    ret = (rObj == Py_True);

    FUNC0(rObj);

    return ret;
}