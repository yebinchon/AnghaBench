#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_17__ ;
typedef  struct TYPE_19__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_type ;
struct TYPE_23__ {int /*<<< orphan*/  len; int /*<<< orphan*/  val; } ;
typedef  TYPE_3__ zend_string ;
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_24__ {int num_args; int /*<<< orphan*/  function_name; TYPE_15__* arg_info; int /*<<< orphan*/  handler; int /*<<< orphan*/  fn_flags; int /*<<< orphan*/  scope; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ zend_internal_function ;
typedef  int /*<<< orphan*/  zend_function ;
typedef  int zend_bool ;
typedef  int /*<<< orphan*/  zend_arg_info ;
struct TYPE_25__ {int /*<<< orphan*/ * method_cache; int /*<<< orphan*/  code_page; scalar_t__ typeinfo; int /*<<< orphan*/  ce; int /*<<< orphan*/  v; } ;
typedef  TYPE_5__ php_com_dotnet_object ;
typedef  int /*<<< orphan*/  f ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_26__ {int /*<<< orphan*/ * lptcomp; int /*<<< orphan*/  lpvardesc; TYPE_17__* lpfuncdesc; } ;
struct TYPE_21__ {int wParamFlags; } ;
struct TYPE_22__ {TYPE_1__ paramdesc; } ;
struct TYPE_20__ {int cParams; TYPE_2__* lprgelemdescParam; } ;
struct TYPE_19__ {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  OLECHAR ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  ITypeComp ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int DESCKIND ;
typedef  TYPE_6__ BINDPTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  DESCKIND_FUNCDESC 131 
#define  DESCKIND_NONE 130 
#define  DESCKIND_TYPECOMP 129 
#define  DESCKIND_VARDESC 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INVOKE_FUNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int PARAMFLAG_FOUT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_WIN32 ; 
 scalar_t__ VT_DISPATCH ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ZEND_ACC_CALL_VIA_HANDLER ; 
 int /*<<< orphan*/  ZEND_INTERNAL_FUNCTION ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  com_method_handler ; 
 TYPE_15__* FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int) ; 
 int /*<<< orphan*/  function_dtor ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC21 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*) ; 

__attribute__((used)) static zend_function *FUNC27(zend_object **object_ptr, zend_string *name, const zval *key)
{
	zend_internal_function f, *fptr = NULL;
	zend_function *func;
	DISPID dummy;
	php_com_dotnet_object *obj = (php_com_dotnet_object*)*object_ptr;

	if (FUNC11(&obj->v) != VT_DISPATCH) {
		return NULL;
	}

	if (FUNC1(FUNC19(obj, name->val, name->len, &dummy))) {
		return NULL;
	}

	/* check cache */
	if (obj->method_cache == NULL || NULL == (fptr = FUNC21(obj->method_cache, name))) {
		FUNC18(&f, 0, sizeof(zend_internal_function));
		f.type = ZEND_INTERNAL_FUNCTION;
		f.num_args = 0;
		f.arg_info = NULL;
		f.scope = obj->ce;
		f.fn_flags = ZEND_ACC_CALL_VIA_HANDLER;
		f.function_name = FUNC26(name);
		f.handler = FUNC9(com_method_handler);

		fptr = &f;

		if (obj->typeinfo) {
			/* look for byref params */
			ITypeComp *comp;
			ITypeInfo *TI = NULL;
			DESCKIND kind;
			BINDPTR bindptr;
			OLECHAR *olename;
			ULONG lhash;
			int i;

			if (FUNC10(FUNC4(obj->typeinfo, &comp))) {
				olename = FUNC20(name->val, name->len, obj->code_page);
				lhash = FUNC8(SYS_WIN32, LOCALE_SYSTEM_DEFAULT, olename);

				if (FUNC10(FUNC2(comp, olename, lhash, INVOKE_FUNC, &TI, &kind, &bindptr))) {
					switch (kind) {
						case DESCKIND_FUNCDESC:
							f.arg_info = FUNC14(bindptr.lpfuncdesc->cParams, sizeof(zend_arg_info));

							for (i = 0; i < bindptr.lpfuncdesc->cParams; i++) {
								zend_bool by_ref = (bindptr.lpfuncdesc->lprgelemdescParam[i].paramdesc.wParamFlags & PARAMFLAG_FOUT) != 0;
								f.arg_info[i].type = (zend_type) FUNC12(FUNC13(by_ref, 0));
							}

							f.num_args = bindptr.lpfuncdesc->cParams;

							FUNC6(TI, bindptr.lpfuncdesc);
							break;

							/* these should not happen, but *might* happen if the user
							 * screws up; lets avoid a leak in that case */
						case DESCKIND_VARDESC:
							FUNC7(TI, bindptr.lpvardesc);
							break;
						case DESCKIND_TYPECOMP:
							FUNC3(bindptr.lptcomp);
							break;

						case DESCKIND_NONE:
							break;
					}
					if (TI) {
						FUNC5(TI);
					}
				}
				FUNC3(comp);
				FUNC15(olename);
			}
		}

		FUNC24((zend_function*)&f);
		/* save this method in the cache */
		if (!obj->method_cache) {
			FUNC0(obj->method_cache);
			FUNC22(obj->method_cache, 2, NULL, function_dtor, 0);
		}

		FUNC23(obj->method_cache, name, &f, sizeof(f));
	}

	if (fptr) {
		/* duplicate this into a new chunk of emalloc'd memory,
		 * since the engine will efree it */
		FUNC25(fptr->function_name);
		func = FUNC16(sizeof(*fptr));
		FUNC17(func, fptr, sizeof(*fptr));

		return func;
	}

	return NULL;
}