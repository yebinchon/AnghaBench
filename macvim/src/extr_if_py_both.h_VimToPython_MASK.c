#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {long v_float; TYPE_1__* v_dict; TYPE_5__* v_list; scalar_t__ v_number; int /*<<< orphan*/ * v_string; } ;
struct TYPE_15__ {scalar_t__ v_type; TYPE_2__ vval; } ;
typedef  TYPE_3__ typval_T ;
typedef  scalar_t__ long_u ;
struct TYPE_16__ {TYPE_3__ li_tv; struct TYPE_16__* li_next; } ;
typedef  TYPE_4__ listitem_T ;
struct TYPE_17__ {TYPE_4__* lv_first; } ;
typedef  TYPE_5__ list_T ;
struct TYPE_18__ {scalar_t__ ht_used; TYPE_7__* ht_array; } ;
typedef  TYPE_6__ hashtab_T ;
struct TYPE_19__ {scalar_t__ hi_key; } ;
typedef  TYPE_7__ hashitem_T ;
struct TYPE_20__ {TYPE_3__ di_tv; } ;
typedef  TYPE_8__ dictitem_T ;
struct TYPE_13__ {TYPE_6__ dv_hashtab; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int NUMBUFLEN ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 scalar_t__ VAR_DICT ; 
 scalar_t__ VAR_FLOAT ; 
 scalar_t__ VAR_LIST ; 
 scalar_t__ VAR_NUMBER ; 
 scalar_t__ VAR_STRING ; 
 TYPE_8__* FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,long) ; 

__attribute__((used)) static PyObject *
FUNC11(typval_T *our_tv, int depth, PyObject *lookup_dict)
{
    PyObject	*ret;
    PyObject	*newObj;
    char	ptrBuf[sizeof(void *) * 2 + 3];

    /* Avoid infinite recursion */
    if (depth > 100)
    {
	FUNC8(Py_None);
	ret = Py_None;
	return ret;
    }

    /* Check if we run into a recursive loop.  The item must be in lookup_dict
     * then and we can use it again. */
    if ((our_tv->v_type == VAR_LIST && our_tv->vval.v_list != NULL)
	    || (our_tv->v_type == VAR_DICT && our_tv->vval.v_dict != NULL))
    {
	FUNC10(ptrBuf, "%p",
		our_tv->v_type == VAR_LIST ? (void *)our_tv->vval.v_list
					   : (void *)our_tv->vval.v_dict);

	if ((ret = FUNC1(lookup_dict, ptrBuf)))
	{
	    FUNC8(ret);
	    return ret;
	}
    }

    if (our_tv->v_type == VAR_STRING)
	ret = FUNC6(our_tv->vval.v_string == NULL
					? "" : (char *)our_tv->vval.v_string);
    else if (our_tv->v_type == VAR_NUMBER)
    {
	char buf[NUMBUFLEN];

	/* For backwards compatibility numbers are stored as strings. */
	FUNC10(buf, "%ld", (long)our_tv->vval.v_number);
	ret = FUNC6((char *)buf);
    }
# ifdef FEAT_FLOAT
    else if (our_tv->v_type == VAR_FLOAT)
    {
	char buf[NUMBUFLEN];

	sprintf(buf, "%f", our_tv->vval.v_float);
	ret = PyString_FromString((char *)buf);
    }
# endif
    else if (our_tv->v_type == VAR_LIST)
    {
	list_T		*list = our_tv->vval.v_list;
	listitem_T	*curr;

	if (list == NULL)
	    return NULL;

	if (!(ret = FUNC5(0)))
	    return NULL;

	if (FUNC3(lookup_dict, ptrBuf, ret))
	{
	    FUNC7(ret);
	    return NULL;
	}

	for (curr = list->lv_first; curr != NULL; curr = curr->li_next)
	{
	    if (!(newObj = FUNC11(&curr->li_tv, depth + 1, lookup_dict)))
	    {
		FUNC7(ret);
		return NULL;
	    }
	    if (FUNC4(ret, newObj))
	    {
		FUNC7(newObj);
		FUNC7(ret);
		return NULL;
	    }
	    FUNC7(newObj);
	}
    }
    else if (our_tv->v_type == VAR_DICT)
    {

	hashtab_T	*ht = &our_tv->vval.v_dict->dv_hashtab;
	long_u	todo = ht->ht_used;
	hashitem_T	*hi;
	dictitem_T	*di;
	if (our_tv->vval.v_dict == NULL)
	    return NULL;

	if (!(ret = FUNC2()))
	    return NULL;

	if (FUNC3(lookup_dict, ptrBuf, ret))
	{
	    FUNC7(ret);
	    return NULL;
	}

	for (hi = ht->ht_array; todo > 0; ++hi)
	{
	    if (!FUNC0(hi))
	    {
		--todo;

		di = FUNC9(hi);
		if (!(newObj = FUNC11(&di->di_tv, depth + 1, lookup_dict)))
		{
		    FUNC7(ret);
		    return NULL;
		}
		if (FUNC3(ret, (char *)hi->hi_key, newObj))
		{
		    FUNC7(ret);
		    FUNC7(newObj);
		    return NULL;
		}
	    }
	}
    }
    else
    {
	FUNC8(Py_None);
	ret = Py_None;
    }

    return ret;
}