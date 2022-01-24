#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kind ;
struct TYPE_20__ {int t; } ;
struct TYPE_19__ {int i; } ;
struct TYPE_24__ {int r; TYPE_2__ type; TYPE_1__ c; } ;
struct TYPE_23__ {int func_args; } ;
struct TYPE_22__ {int t; TYPE_3__* ref; } ;
struct TYPE_21__ {struct TYPE_21__* next; } ;
typedef  TYPE_3__ Sym ;
typedef  TYPE_4__ CType ;
typedef  TYPE_5__ AttributeDef ;

/* Variables and functions */
 int FUNC_ELLIPSIS ; 
 int FUNC_NEW ; 
 int FUNC_OLD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int PTR_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int SYM_FIELD ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char TOK_DOTS ; 
 char TOK_RESTRICT1 ; 
 int TOK_UIDENT ; 
 int TYPE_ABSTRACT ; 
 int TYPE_DIRECT ; 
 int VT_ARRAY ; 
 int VT_BTYPE ; 
 int VT_CONST ; 
 int VT_CONSTANT ; 
 int VT_FUNC ; 
 int VT_INT32 ; 
 int VT_LVAL ; 
 int VT_PTR ; 
 int VT_SYM ; 
 int VT_VALMASK ; 
 int VT_VLA ; 
 int VT_VOID ; 
 int arraysize ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  global_symname ; 
 char* global_type ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  local_stack ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ nocode_wanted ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC14 (int,TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,...) ; 
 scalar_t__ FUNC16 () ; 
 char tok ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,TYPE_5__*,int*,int) ; 
 int FUNC18 (TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 TYPE_6__* vtop ; 

__attribute__((used)) static void FUNC21(CType *type, AttributeDef *ad) {
	int n, l, t1, arg_size, align;
	Sym **plast, *s, *first;
	AttributeDef ad1;
	CType pt;
	char *symname = NULL;
	int narg = 0;

	if (tok == '(') {
		/* function declaration */
		FUNC9 ();
		l = 0;
		first = NULL;
		plast = &first;
		{
			const char *ret_type = global_type;
			FUNC6 (symname);
			symname = FUNC13 (global_symname);
			FUNC15 ("func.%s.ret=%s\n", symname, ret_type);
			FUNC15 ("func.%s.cc=%s\n", symname, "cdecl");	// TODO
			FUNC15 ("%s=func\n", symname);
		}
		arg_size = 0;
		if (tok != ')') {
			while (FUNC16 () == 0) {
				/* read param name and compute offset */
				if (l != FUNC_OLD) {
					if (!FUNC10 (&pt, &ad1)) {
						if (l) {
							FUNC2 ("invalid type");
						} else {
							l = FUNC_OLD;
							goto old_proto;
						}
					}
					l = FUNC_NEW;
					if ((pt.t & VT_BTYPE) == VT_VOID && tok == ')') {
						break;
					}
					FUNC17 (&pt, &ad1, &n, TYPE_DIRECT | TYPE_ABSTRACT);
					if ((pt.t & VT_BTYPE) == VT_VOID) {
						FUNC2 ("parameter declared as void");
					}
					arg_size += (FUNC18 (&pt, &align) + PTR_SIZE - 1) / PTR_SIZE;
				} else {
old_proto:
					n = tok;
					if (n < TOK_UIDENT) {
						FUNC4 ("identifier");
					}
					pt.t = VT_INT32;
					FUNC9 ();
				}
				FUNC3 (&pt);
				s = FUNC14 (n | SYM_FIELD, &pt, 0, 0);
				if (!s) {
					return;
				} else {
					char kind[1024];
					FUNC19 (kind, sizeof (kind), &pt, NULL);
					FUNC15 ("func.%s.arg.%d=%s,%s\n",
						symname, narg, kind, global_symname);
					narg++;
				}
				*plast = s;
				plast = &s->next;
				if (tok == ')') {
					break;
				}
				FUNC12 (',');
				if (l == FUNC_NEW && tok == TOK_DOTS) {
					l = FUNC_ELLIPSIS;
					FUNC9 ();
					break;
				}
			}
		}
		FUNC15 ("func.%s.args=%d\n", symname, narg);
		/* if no parameters, then old type prototype */
		if (l == 0) {
			l = FUNC_OLD;
		}
		FUNC12 (')');
		/* NOTE: const is ignored in returned type as it has a special
		   meaning in gcc / C++ */
		type->t &= ~VT_CONSTANT;
		/* some ancient pre-K&R C allows a function to return an array
		   and the array brackets to be put after the arguments, such
		   that "int c()[]" means something like "int[] c()" */
		if (tok == '[') {
			FUNC9 ();
			FUNC12 (']');	/* only handle simple "[]" */
			type->t |= VT_PTR;
		}
		/* we push a anonymous symbol which will contain the function prototype */
		ad->func_args = arg_size;
		s = FUNC14 (SYM_FIELD, type, FUNC0 (ad), l);
		if (!s) {
			return;
		}
		s->next = first;
		type->t = VT_FUNC;
		type->ref = s;
		FUNC1 (symname);
	} else if (tok == '[') {
		/* array definition */
		FUNC9 ();
		if (tok == TOK_RESTRICT1) {
			FUNC9 ();
		}
		n = -1;
		t1 = 0;
		if (tok != ']') {
			if (!local_stack || nocode_wanted) {
				FUNC20 (FUNC5 ());
			} else {
				FUNC7 ();
			}
			if ((vtop->r & (VT_VALMASK | VT_LVAL | VT_SYM)) == VT_CONST) {
				n = vtop->c.i;
				if (n < 0) {
					FUNC2 ("invalid array size");
				}
			} else {
				if (!FUNC8 (vtop->type.t & VT_BTYPE)) {
					FUNC2 ("size of variable length array should be an integer");
				}
				t1 = VT_VLA;
			}
		}
		FUNC12 (']');
		/* parse next post type */
		FUNC21 (type, ad);

		/* we push an anonymous symbol which will contain the array
		   element type */
		arraysize = n;
#if 0
		if (n < 0) {
			printf ("array with no size []\n");
		} else {
			printf ("PUSH SIZE %d\n", n);
		}
#endif
		s = FUNC14 (SYM_FIELD, type, 0, n);
		if (!s) {
			return;
		}
		type->t = (t1? VT_VLA: VT_ARRAY) | VT_PTR;
		type->ref = s;
	}
}