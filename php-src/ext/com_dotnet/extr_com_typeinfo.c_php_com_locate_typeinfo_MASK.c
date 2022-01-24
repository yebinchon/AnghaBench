#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  v; int /*<<< orphan*/ * typeinfo; } ;
typedef  TYPE_1__ php_com_dotnet_object ;
struct TYPE_7__ {int cImplTypes; } ;
typedef  TYPE_2__ TYPEATTR ;
typedef  int /*<<< orphan*/  OLECHAR ;
typedef  int /*<<< orphan*/  MEMBERID ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  IProvideClassInfo2 ;
typedef  int /*<<< orphan*/  IProvideClassInfo ;
typedef  int /*<<< orphan*/  HREFTYPE ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  CP_THREAD_ACP ; 
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GUIDKIND_DEFAULT_SOURCE_DISP_IID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IProvideClassInfo ; 
 int /*<<< orphan*/  IID_IProvideClassInfo2 ; 
 int IMPLTYPEFLAG_FDEFAULT ; 
 int IMPLTYPEFLAG_FSOURCE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,unsigned short*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 

ITypeInfo *FUNC25(char *typelibname, php_com_dotnet_object *obj, char *dispname, int sink)
{
	ITypeInfo *typeinfo = NULL;
	ITypeLib *typelib = NULL;
	int gotguid = 0;
	GUID iid;

	if (obj) {
		if (dispname == NULL && sink) {
			IProvideClassInfo2 *pci2;
			IProvideClassInfo *pci;

			if (FUNC18(FUNC3(FUNC19(&obj->v), &IID_IProvideClassInfo2, (void**)&pci2))) {
				gotguid = FUNC18(FUNC4(pci2, GUIDKIND_DEFAULT_SOURCE_DISP_IID, &iid));
				FUNC5(pci2);
			}
			if (!gotguid && FUNC18(FUNC3(FUNC19(&obj->v), &IID_IProvideClassInfo, (void**)&pci))) {
				/* examine the available interfaces */
				/* TODO: write some code here */
				FUNC23(NULL, E_WARNING, "IProvideClassInfo: this code not yet written!");
				FUNC6(pci);
			}
		} else if (dispname == NULL) {
			if (obj->typeinfo) {
				FUNC7(obj->typeinfo);
				return obj->typeinfo;
			} else {
				FUNC2(FUNC19(&obj->v), 0, LANG_NEUTRAL, &typeinfo);
				if (typeinfo) {
					return typeinfo;
				}
			}
		} else if (dispname && obj->typeinfo) {
			unsigned int idx;
			/* get the library from the object; the rest will be dealt with later */
			FUNC8(obj->typeinfo, &typelib, &idx);
		} else if (typelibname == NULL) {
			FUNC2(FUNC19(&obj->v), 0, LANG_NEUTRAL, &typeinfo);
			if (dispname) {
				unsigned int idx;
				/* get the library from the object; the rest will be dealt with later */
				FUNC8(typeinfo, &typelib, &idx);

				if (typelib) {
					FUNC13(typeinfo);
					typeinfo = NULL;
				}
			}
		}
	} else if (typelibname) {
		/* Fetch the typelibrary and use that to look things up */
		typelib = FUNC21(typelibname, CP_THREAD_ACP);
	}

	if (!gotguid && dispname && typelib) {
		unsigned short cfound;
		MEMBERID memid;
		OLECHAR *olename = FUNC22(dispname, FUNC24(dispname), CP_ACP);

		cfound = 1;
		if (FUNC1(FUNC15(typelib, olename, 0, &typeinfo, &memid, &cfound)) || cfound == 0) {
			CLSID coclass;
			ITypeInfo *coinfo;

			/* assume that it might be a progid instead */
			if (FUNC18(FUNC0(olename, &coclass)) &&
					FUNC18(FUNC16(typelib, &coclass, &coinfo))) {

				/* enumerate implemented interfaces and pick the one as indicated by sink */
				TYPEATTR *attr;
				int i;

				FUNC12(coinfo, &attr);

				for (i = 0; i < attr->cImplTypes; i++) {
					HREFTYPE rt;
					int tf;

					if (FUNC1(FUNC9(coinfo, i, &tf))) {
						continue;
					}

					if ((sink && tf == (IMPLTYPEFLAG_FSOURCE|IMPLTYPEFLAG_FDEFAULT)) ||
						(!sink && (tf & IMPLTYPEFLAG_FSOURCE) == 0)) {

						/* flags match what we are looking for */

						if (FUNC18(FUNC11(coinfo, i, &rt)))
							if (FUNC18(FUNC10(coinfo, rt, &typeinfo)))
								break;

					}
				}

				FUNC14(coinfo, attr);
				FUNC13(coinfo);
			}
		}


		FUNC20(olename);
	} else if (gotguid) {
		FUNC16(typelib, &iid, &typeinfo);
	}

	if (typelib) {
		FUNC17(typelib);
	}

	return typeinfo;
}