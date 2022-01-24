#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_4__* v_dict; } ;
struct TYPE_16__ {TYPE_1__ vval; int /*<<< orphan*/  v_type; } ;
typedef  TYPE_2__ typval_T ;
struct TYPE_14__ {scalar_t__ v_lock; } ;
struct TYPE_17__ {int /*<<< orphan*/  di_key; TYPE_13__ di_tv; } ;
typedef  TYPE_3__ dictitem_T ;
struct TYPE_18__ {int /*<<< orphan*/  dv_refcount; } ;
typedef  TYPE_4__ dict_T ;
typedef  scalar_t__ char_u ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 scalar_t__ NUL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RAISE_NO_EMPTY_KEYS ; 
 scalar_t__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  VAR_DICT ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_13__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 TYPE_3__* FUNC12 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 TYPE_4__* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC16(PyObject *obj, typval_T *tv, PyObject *lookup_dict)
{
    dict_T	*dict;
    char_u	*key;
    dictitem_T	*di;
    PyObject	*list;
    PyObject	*iterator;
    PyObject	*keyObject;
    PyObject	*valObject;

    if (!(dict = FUNC14()))
	return -1;

    tv->v_type = VAR_DICT;
    tv->vval.v_dict = dict;

    if (!(list = FUNC2(obj)))
    {
	FUNC11(dict);
	return -1;
    }

    if (!(iterator = FUNC4(list)))
    {
	FUNC11(dict);
	FUNC5(list);
	return -1;
    }
    FUNC5(list);

    while ((keyObject = FUNC1(iterator)))
    {
	PyObject	*todecref;

	if (!(key = FUNC8(keyObject, &todecref)))
	{
	    FUNC5(keyObject);
	    FUNC5(iterator);
	    FUNC11(dict);
	    return -1;
	}

	if (*key == NUL)
	{
	    FUNC5(keyObject);
	    FUNC5(iterator);
	    FUNC6(todecref);
	    FUNC11(dict);
	    RAISE_NO_EMPTY_KEYS;
	    return -1;
	}

	if (!(valObject = FUNC3(obj, keyObject)))
	{
	    FUNC5(keyObject);
	    FUNC5(iterator);
	    FUNC6(todecref);
	    FUNC11(dict);
	    return -1;
	}

	di = FUNC12(key);

	FUNC5(keyObject);
	FUNC6(todecref);

	if (di == NULL)
	{
	    FUNC5(iterator);
	    FUNC5(valObject);
	    FUNC11(dict);
	    FUNC0();
	    return -1;
	}
	di->di_tv.v_lock = 0;

	if (FUNC9(valObject, &di->di_tv, lookup_dict) == -1)
	{
	    FUNC5(iterator);
	    FUNC5(valObject);
	    FUNC15(di);
	    FUNC11(dict);
	    return -1;
	}

	FUNC5(valObject);

	if (FUNC10(dict, di) == FAIL)
	{
	    FUNC7(di->di_key);
	    FUNC5(iterator);
	    FUNC13(di);
	    FUNC11(dict);
	    return -1;
	}
    }
    FUNC5(iterator);
    --dict->dv_refcount;
    return 0;
}