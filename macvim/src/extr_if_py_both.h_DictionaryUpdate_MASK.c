#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  v_dict; } ;
struct TYPE_17__ {TYPE_1__ vval; } ;
typedef  TYPE_2__ typval_T ;
struct TYPE_15__ {int /*<<< orphan*/  v_type; scalar_t__ v_lock; } ;
struct TYPE_18__ {int /*<<< orphan*/  di_key; TYPE_13__ di_tv; } ;
typedef  TYPE_3__ dictitem_T ;
struct TYPE_19__ {scalar_t__ dv_lock; } ;
typedef  TYPE_4__ dict_T ;
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_20__ {TYPE_4__* dict; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_5__ DictionaryObject ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_13__*) ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RAISE_LOCKED_DICTIONARY ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  VAR_UNKNOWN ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 scalar_t__ FUNC21 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*) ; 

__attribute__((used)) static PyObject *
FUNC25(DictionaryObject *self, PyObject *args, PyObject *kwargs)
{
    dict_T	*dict = self->dict;

    if (dict->dv_lock)
    {
	RAISE_LOCKED_DICTIONARY;
	return NULL;
    }

    if (kwargs)
    {
	typval_T	tv;

	if (FUNC0(kwargs, &tv) == -1)
	    return NULL;

	FUNC19();
	FUNC22(self->dict, tv.vval.v_dict, (char_u *) "force");
	FUNC20(&tv);
	if (FUNC18())
	    return NULL;
    }
    else
    {
	PyObject	*obj = NULL;

	if (!FUNC3(args, "|O", &obj))
	    return NULL;

	if (obj == NULL)
	{
	    FUNC14(Py_None);
	    return Py_None;
	}

	if (FUNC9(obj, "keys"))
	    return FUNC25(self, NULL, obj);
	else
	{
	    PyObject	*iterator;
	    PyObject	*item;

	    if (!(iterator = FUNC8(obj)))
		return NULL;

	    while ((item = FUNC7(iterator)))
	    {
		PyObject	*fast;
		PyObject	*keyObject;
		PyObject	*valObject;
		PyObject	*todecref;
		char_u		*key;
		dictitem_T	*di;

		if (!(fast = FUNC10(item, "")))
		{
		    FUNC13(iterator);
		    FUNC13(item);
		    return NULL;
		}

		FUNC13(item);

		if (FUNC12(fast) != 2)
		{
		    FUNC13(iterator);
		    FUNC13(fast);
		    FUNC4(PyExc_ValueError,
			    FUNC2("expected sequence element of size 2, "
			    "but got sequence of size %d"),
			    (int) FUNC12(fast));
		    return NULL;
		}

		keyObject = FUNC11(fast, 0);

		if (!(key = FUNC17(keyObject, &todecref)))
		{
		    FUNC13(iterator);
		    FUNC13(fast);
		    return NULL;
		}

		di = FUNC23(key);

		FUNC15(todecref);

		if (di == NULL)
		{
		    FUNC13(fast);
		    FUNC13(iterator);
		    FUNC5();
		    return NULL;
		}
		di->di_tv.v_lock = 0;
		di->di_tv.v_type = VAR_UNKNOWN;

		valObject = FUNC11(fast, 1);

		if (FUNC1(valObject, &di->di_tv) == -1)
		{
		    FUNC13(iterator);
		    FUNC13(fast);
		    FUNC24(di);
		    return NULL;
		}

		FUNC13(fast);

		if (FUNC21(dict, di) == FAIL)
		{
		    FUNC16(di->di_key);
		    FUNC13(iterator);
		    FUNC24(di);
		    return NULL;
		}
	    }

	    FUNC13(iterator);

	    /* Iterator may have finished due to an exception */
	    if (FUNC6())
		return NULL;
	}
    }
    FUNC14(Py_None);
    return Py_None;
}