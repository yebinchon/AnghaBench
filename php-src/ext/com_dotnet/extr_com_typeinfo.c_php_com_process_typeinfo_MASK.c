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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_17__ {scalar_t__ vt; TYPE_4__* lptdesc; } ;
struct TYPE_15__ {int wParamFlags; } ;
struct TYPE_20__ {TYPE_5__ tdesc; TYPE_3__ paramdesc; } ;
struct TYPE_13__ {scalar_t__ vt; } ;
struct TYPE_14__ {TYPE_1__ tdesc; } ;
struct TYPE_19__ {int invkind; scalar_t__ memid; int cParams; TYPE_8__* lprgelemdescParam; TYPE_2__ elemdescFunc; } ;
struct TYPE_18__ {scalar_t__ typekind; int cFuncs; int /*<<< orphan*/  guid; } ;
struct TYPE_16__ {scalar_t__ vt; } ;
typedef  TYPE_6__ TYPEATTR ;
typedef  int /*<<< orphan*/  OLECHAR ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HashTable ;
typedef  int /*<<< orphan*/  GUID ;
typedef  TYPE_7__ FUNCDESC ;
typedef  TYPE_8__ ELEMDESC ;
typedef  scalar_t__ DISPID ;
typedef  char BSTR ;

/* Variables and functions */
 int DISPATCH_PROPERTYGET ; 
 int DISPATCH_PROPERTYPUT ; 
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,char*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 scalar_t__ MEMBERID_NIL ; 
 int PARAMFLAG_FIN ; 
 int PARAMFLAG_FOUT ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 scalar_t__ TKIND_DISPATCH ; 
 scalar_t__ VT_PTR ; 
 scalar_t__ VT_VOID ; 
 int /*<<< orphan*/  ZVAL_PTR_DTOR ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char* FUNC11 (char,size_t*,int) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 scalar_t__ FUNC14 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,size_t) ; 

int FUNC20(ITypeInfo *typeinfo, HashTable *id_to_name, int printdef, GUID *guid, int codepage)
{
	TYPEATTR *attr;
	FUNCDESC *func;
	int i;
	OLECHAR *olename;
	char *ansiname = NULL;
	size_t ansinamelen;
	int ret = 0;

	if (FUNC0(FUNC4(typeinfo, &attr))) {
		return 0;
	}

	/* verify that it is suitable */
	if (id_to_name == NULL || attr->typekind == TKIND_DISPATCH) {

		if (guid) {
			FUNC10(guid, &attr->guid, sizeof(GUID));
		}

		if (printdef) {
			char *guidstring;

			FUNC1(typeinfo, MEMBERID_NIL, &olename, NULL, NULL, NULL);
			ansiname = FUNC11(olename, &ansinamelen, codepage);
			FUNC7(olename);

			guidstring = FUNC12(&attr->guid, codepage);
			FUNC13("class %s { /* GUID=%s */\n", ansiname, guidstring);
			FUNC9(guidstring);

			FUNC9(ansiname);
		}

		if (id_to_name) {
			FUNC18(id_to_name, 0, NULL, ZVAL_PTR_DTOR, 0);
		}

		/* So we've got the dispatch interface; lets list the event methods */
		for (i = 0; i < attr->cFuncs; i++) {
			zval tmp;
			DISPID lastid = 0;	/* for props */
			int isprop;

			if (FUNC0(FUNC2(typeinfo, i, &func)))
				break;

			isprop = (func->invkind & DISPATCH_PROPERTYGET || func->invkind & DISPATCH_PROPERTYPUT);

			if (!isprop || lastid != func->memid) {

				lastid = func->memid;

				FUNC1(typeinfo, func->memid, &olename, NULL, NULL, NULL);
				ansiname = FUNC11(olename, &ansinamelen, codepage);
				FUNC7(olename);

				if (printdef) {
					int j;
					char *funcdesc;
					size_t funcdesclen;
					unsigned int cnames = 0;
					BSTR *names;

					names = (BSTR*)FUNC14((func->cParams + 1), sizeof(BSTR), 0);

					FUNC3(typeinfo, func->memid, names, func->cParams + 1, &cnames);
					/* first element is the function name */
					FUNC7(names[0]);

					FUNC13("\t/* DISPID=%d */\n", func->memid);

					if (func->elemdescFunc.tdesc.vt != VT_VOID) {
						FUNC13("\t/* %s [%d] */\n",
								FUNC15(func->elemdescFunc.tdesc.vt),
								func->elemdescFunc.tdesc.vt
								);
					}

					if (isprop) {

						FUNC1(typeinfo, func->memid, NULL, &olename, NULL, NULL);
						if (olename) {
							funcdesc = FUNC11(olename, &funcdesclen, codepage);
							FUNC7(olename);
							FUNC13("\t/* %s */\n", funcdesc);
							FUNC9(funcdesc);
						}

						FUNC13("\tvar $%s;\n\n", ansiname);

					} else {
						/* a function */

						FUNC13("\tfunction %s(\n", ansiname);

						for (j = 0; j < func->cParams; j++) {
							ELEMDESC *elem = &func->lprgelemdescParam[j];

							FUNC13("\t\t/* %s [%d] ", FUNC15(elem->tdesc.vt), elem->tdesc.vt);

							if (elem->paramdesc.wParamFlags & PARAMFLAG_FIN)
								FUNC13("[in]");
							if (elem->paramdesc.wParamFlags & PARAMFLAG_FOUT)
								FUNC13("[out]");

							if (elem->tdesc.vt == VT_PTR) {
								/* what does it point to ? */
								FUNC13(" --> %s [%d] ",
										FUNC15(elem->tdesc.lptdesc->vt),
										elem->tdesc.lptdesc->vt
										);
							}

							/* when we handle prop put and get, this will look nicer */
							if (j+1 < (int)cnames) {
								funcdesc = FUNC11(names[j+1], &funcdesclen, codepage);
								FUNC7(names[j+1]);
							} else {
								funcdesc = "???";
							}

							FUNC13(" */ %s%s%c\n",
									elem->tdesc.vt == VT_PTR ? "&$" : "$",
									funcdesc,
									j == func->cParams - 1 ? ' ' : ','
									);

							if (j+1 < (int)cnames) {
								FUNC9(funcdesc);
							}
						}

						FUNC13("\t\t)\n\t{\n");

						FUNC1(typeinfo, func->memid, NULL, &olename, NULL, NULL);
						if (olename) {
							funcdesc = FUNC11(olename, &funcdesclen, codepage);
							FUNC7(olename);
							FUNC13("\t\t/* %s */\n", funcdesc);
							FUNC9(funcdesc);
						}

						FUNC13("\t}\n");
					}

					FUNC9(names);
				}

				if (id_to_name) {
					FUNC19(ansiname, ansinamelen);
					FUNC8(&tmp, ansiname, ansinamelen);
					FUNC17(id_to_name, func->memid, &tmp);
					// TODO: avoid reallocation???
					FUNC9(ansiname);
				}
			}
			FUNC5(typeinfo, func);
		}

		if (printdef) {
			FUNC13("}\n");
		}

		ret = 1;
	} else {
		FUNC16(E_WARNING, "That's not a dispatchable interface!! type kind = %08x", attr->typekind);
	}

	FUNC6(typeinfo, attr);

	return ret;
}