#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_2__* v_list; TYPE_1__* v_dict; } ;
struct TYPE_17__ {int v_type; TYPE_3__ vval; } ;
typedef  TYPE_4__ typval_T ;
typedef  int (* pytotvfunc ) (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ;
struct TYPE_15__ {int /*<<< orphan*/  lv_refcount; } ;
struct TYPE_14__ {int /*<<< orphan*/  dv_refcount; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
#define  VAR_DICT 129 
#define  VAR_LIST 128 
 void* VAR_UNKNOWN ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(PyObject *obj, typval_T *tv,
				    pytotvfunc py_to_tv, PyObject *lookup_dict)
{
    PyObject	*capsule;
    char	hexBuf[sizeof(void *) * 2 + 3];

    FUNC8(hexBuf, "%p", obj);

# ifdef PY_USE_CAPSULE
    capsule = PyDict_GetItemString(lookup_dict, hexBuf);
# else
    capsule = (PyObject *)FUNC4(lookup_dict, hexBuf);
# endif
    if (capsule == NULL)
    {
# ifdef PY_USE_CAPSULE
	capsule = PyCapsule_New(tv, NULL, NULL);
# else
	capsule = FUNC1(tv, NULL);
# endif
	if (FUNC5(lookup_dict, hexBuf, capsule))
	{
	    FUNC6(capsule);
	    tv->v_type = VAR_UNKNOWN;
	    return -1;
	}

	FUNC6(capsule);

	if (py_to_tv(obj, tv, lookup_dict) == -1)
	{
	    tv->v_type = VAR_UNKNOWN;
	    return -1;
	}
	/* As we are not using copy_tv which increments reference count we must
	 * do it ourself. */
	switch(tv->v_type)
	{
	    case VAR_DICT: ++tv->vval.v_dict->dv_refcount; break;
	    case VAR_LIST: ++tv->vval.v_list->lv_refcount; break;
	}
    }
    else
    {
	typval_T	*v;

# ifdef PY_USE_CAPSULE
	v = PyCapsule_GetPointer(capsule, NULL);
# else
	v = FUNC0(capsule);
# endif
	FUNC7(v, tv);
    }
    return 0;
}