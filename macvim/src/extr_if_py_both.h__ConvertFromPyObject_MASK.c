#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_45__   TYPE_8__ ;
typedef  struct TYPE_44__   TYPE_7__ ;
typedef  struct TYPE_43__   TYPE_6__ ;
typedef  struct TYPE_42__   TYPE_5__ ;
typedef  struct TYPE_41__   TYPE_4__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_1__ ;

/* Type definitions */
typedef  void* varnumber_T ;
struct TYPE_40__ {void* v_number; scalar_t__ v_float; int /*<<< orphan*/  v_string; TYPE_2__* v_list; TYPE_1__* v_dict; } ;
struct TYPE_41__ {TYPE_3__ vval; void* v_type; } ;
typedef  TYPE_4__ typval_T ;
typedef  scalar_t__ float_T ;
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_45__ {TYPE_1__* dict; } ;
struct TYPE_44__ {int /*<<< orphan*/ * name; } ;
struct TYPE_43__ {TYPE_2__* list; } ;
struct TYPE_42__ {int /*<<< orphan*/  ob_type; } ;
struct TYPE_39__ {int /*<<< orphan*/  lv_refcount; } ;
struct TYPE_38__ {int /*<<< orphan*/  dv_refcount; } ;
typedef  TYPE_5__ PyObject ;
typedef  TYPE_6__ ListObject ;
typedef  TYPE_7__ FunctionObject ;
typedef  TYPE_8__ DictionaryObject ;

/* Variables and functions */
 int /*<<< orphan*/  DictionaryType ; 
 int /*<<< orphan*/  ENC_OPT ; 
 int /*<<< orphan*/  FunctionType ; 
 int /*<<< orphan*/  ListType ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (TYPE_5__*,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 scalar_t__ FUNC6 (TYPE_5__*) ; 
 scalar_t__ FUNC7 (TYPE_5__*) ; 
 scalar_t__ FUNC8 (TYPE_5__*) ; 
 scalar_t__ FUNC9 (TYPE_5__*) ; 
 scalar_t__ FUNC10 (TYPE_5__*) ; 
 scalar_t__ FUNC11 (TYPE_5__*) ; 
 scalar_t__ FUNC12 (TYPE_5__*) ; 
 scalar_t__ FUNC13 (TYPE_5__*) ; 
 scalar_t__ FUNC14 (TYPE_5__*) ; 
 TYPE_5__* FUNC15 (TYPE_5__*) ; 
 scalar_t__ FUNC16 (TYPE_5__*,char*) ; 
 scalar_t__ FUNC17 (TYPE_5__*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC19 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_5__*) ; 
 void* VAR_DICT ; 
 void* VAR_FLOAT ; 
 void* VAR_FUNC ; 
 void* VAR_LIST ; 
 void* VAR_NUMBER ; 
 void* VAR_STRING ; 
 int FUNC24 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pydict_to_tv ; 
 int /*<<< orphan*/  pymap_to_tv ; 
 int /*<<< orphan*/  pyseq_to_tv ; 
 int FUNC26 (int /*<<< orphan*/ *,TYPE_4__*) ; 

__attribute__((used)) static int
FUNC27(PyObject *obj, typval_T *tv, PyObject *lookup_dict)
{
    if (FUNC18(obj->ob_type, &DictionaryType))
    {
	tv->v_type = VAR_DICT;
	tv->vval.v_dict = (((DictionaryObject *)(obj))->dict);
	++tv->vval.v_dict->dv_refcount;
    }
    else if (FUNC18(obj->ob_type, &ListType))
    {
	tv->v_type = VAR_LIST;
	tv->vval.v_list = (((ListObject *)(obj))->list);
	++tv->vval.v_list->lv_refcount;
    }
    else if (FUNC18(obj->ob_type, &FunctionType))
    {
	if (FUNC26(((FunctionObject *) (obj))->name, tv) == -1)
	    return -1;

	tv->v_type = VAR_FUNC;
	FUNC25(tv->vval.v_string);
    }
    else if (FUNC2(obj))
    {
	char_u	*str;

	if (FUNC1(obj, (char **) &str, NULL) == -1)
	    return -1;
	if (str == NULL)
	    return -1;

	if (FUNC26(str, tv) == -1)
	    return -1;

	tv->v_type = VAR_STRING;
    }
    else if (FUNC20(obj))
    {
	PyObject	*bytes;
	char_u	*str;

	bytes = FUNC19(obj, ENC_OPT, NULL);
	if (bytes == NULL)
	    return -1;

	if(FUNC1(bytes, (char **) &str, NULL) == -1)
	    return -1;
	if (str == NULL)
	    return -1;

	if (FUNC26(str, tv))
	{
	    FUNC23(bytes);
	    return -1;
	}
	FUNC23(bytes);

	tv->v_type = VAR_STRING;
    }
#if PY_MAJOR_VERSION < 3
    else if (FUNC9(obj))
    {
	tv->v_type = VAR_NUMBER;
	tv->vval.v_number = (varnumber_T) FUNC8(obj);
	if (FUNC5())
	    return -1;
    }
#endif
    else if (FUNC12(obj))
    {
	tv->v_type = VAR_NUMBER;
	tv->vval.v_number = (varnumber_T) FUNC11(obj);
	if (FUNC5())
	    return -1;
    }
    else if (FUNC3(obj))
	return FUNC24(obj, tv, pydict_to_tv, lookup_dict);
#ifdef FEAT_FLOAT
    else if (PyFloat_Check(obj))
    {
	tv->v_type = VAR_FLOAT;
	tv->vval.v_float = (float_T) PyFloat_AsDouble(obj);
    }
#endif
    else if (FUNC16(obj, "keys"))
	return FUNC24(obj, tv, pymap_to_tv, lookup_dict);
    /* PyObject_GetIter can create built-in iterator for any sequence object */
    else if (FUNC10(obj) || FUNC17(obj))
	return FUNC24(obj, tv, pyseq_to_tv, lookup_dict);
    else if (FUNC13(obj))
	return FUNC24(obj, tv, pymap_to_tv, lookup_dict);
    else if (FUNC14(obj))
    {
	PyObject	*num;

	if (!(num = FUNC15(obj)))
	    return -1;

	tv->v_type = VAR_NUMBER;
	tv->vval.v_number = (varnumber_T) FUNC11(num);

	FUNC21(num);
    }
    else
    {
	FUNC4(PyExc_TypeError,
		FUNC0("unable to convert %s to vim structure"),
		FUNC22(obj));
	return -1;
    }
    return 0;
}