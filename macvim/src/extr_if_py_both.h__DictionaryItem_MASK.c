#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hashitem_T ;
struct TYPE_7__ {int /*<<< orphan*/  di_tv; } ;
typedef  TYPE_1__ dictitem_T ;
struct TYPE_8__ {int /*<<< orphan*/  dv_hashtab; scalar_t__ dv_lock; } ;
typedef  TYPE_2__ dict_T ;
typedef  scalar_t__ char_u ;
struct TYPE_9__ {TYPE_2__* dict; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_3__ DictionaryObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int DICT_FLAG_HAS_DEFAULT ; 
 int DICT_FLAG_NONE_DEFAULT ; 
 int DICT_FLAG_POP ; 
 int DICT_FLAG_RETURN_BOOL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ NUL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyExc_KeyError ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_False ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 int /*<<< orphan*/ * Py_True ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RAISE_LOCKED_DICTIONARY ; 
 int /*<<< orphan*/  RAISE_NO_EMPTY_KEYS ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC12(DictionaryObject *self, PyObject *args, int flags)
{
    PyObject	*keyObject;
    PyObject	*defObject = ((flags & DICT_FLAG_NONE_DEFAULT)? Py_None : NULL);
    PyObject	*ret;
    char_u	*key;
    dictitem_T	*di;
    dict_T	*dict = self->dict;
    hashitem_T	*hi;
    PyObject	*todecref;

    if (flags & DICT_FLAG_HAS_DEFAULT)
    {
	if (!FUNC2(args, "O|O", &keyObject, &defObject))
	    return NULL;
    }
    else
	keyObject = args;

    if (flags & DICT_FLAG_RETURN_BOOL)
	defObject = Py_False;

    if (!(key = FUNC7(keyObject, &todecref)))
	return NULL;

    if (*key == NUL)
    {
	RAISE_NO_EMPTY_KEYS;
	FUNC6(todecref);
	return NULL;
    }

    hi = FUNC10(&dict->dv_hashtab, key);

    FUNC6(todecref);

    if (FUNC1(hi))
    {
	if (defObject)
	{
	    FUNC5(defObject);
	    return defObject;
	}
	else
	{
	    FUNC3(PyExc_KeyError, keyObject);
	    return NULL;
	}
    }
    else if (flags & DICT_FLAG_RETURN_BOOL)
    {
	ret = Py_True;
	FUNC5(ret);
	return ret;
    }

    di = FUNC8(hi);

    if (!(ret = FUNC0(&di->di_tv)))
	return NULL;

    if (flags & DICT_FLAG_POP)
    {
	if (dict->dv_lock)
	{
	    RAISE_LOCKED_DICTIONARY;
	    FUNC4(ret);
	    return NULL;
	}

	FUNC11(&dict->dv_hashtab, hi);
	FUNC9(di);
    }

    return ret;
}