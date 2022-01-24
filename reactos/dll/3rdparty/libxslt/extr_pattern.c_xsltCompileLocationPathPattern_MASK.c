#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xsltParserContextPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_8__ {int error; TYPE_1__* comp; } ;
struct TYPE_7__ {double priority; } ;

/* Variables and functions */
 char CUR ; 
 int /*<<< orphan*/  NEXT ; 
 char FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SKIP_BLANKS ; 
 int /*<<< orphan*/  XSLT_OP_ANCESTOR ; 
 int /*<<< orphan*/  XSLT_OP_PARENT ; 
 int /*<<< orphan*/  XSLT_OP_ROOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC8(xsltParserContextPtr ctxt, int novar) {
    SKIP_BLANKS;
    if ((CUR == '/') && (FUNC0(1) == '/')) {
	/*
	 * since we reverse the query
	 * a leading // can be safely ignored
	 */
	NEXT;
	NEXT;
	ctxt->comp->priority = 0.5;	/* '//' means not 0 priority */
	FUNC5(ctxt, NULL, novar);
    } else if (CUR == '/') {
	/*
	 * We need to find root as the parent
	 */
	NEXT;
	SKIP_BLANKS;
	FUNC1(XSLT_OP_ROOT, NULL, NULL, novar);
	if ((CUR != 0) && (CUR != '|')) {
	    FUNC1(XSLT_OP_PARENT, NULL, NULL, novar);
	    FUNC5(ctxt, NULL, novar);
	}
    } else if (CUR == '*') {
	FUNC5(ctxt, NULL, novar);
    } else if (CUR == '@') {
	FUNC5(ctxt, NULL, novar);
    } else {
	xmlChar *name;
	name = FUNC6(ctxt);
	if (name == NULL) {
	    FUNC7(NULL, NULL, NULL,
		    "xsltCompileLocationPathPattern : Name expected\n");
	    ctxt->error = 1;
	    return;
	}
	SKIP_BLANKS;
	if ((CUR == '(') && !FUNC3(name)) {
	    FUNC4(ctxt, name, 1, novar, 0);
	    FUNC2(name);
	    name = NULL;
	    if ((CUR == '/') && (FUNC0(1) == '/')) {
		FUNC1(XSLT_OP_ANCESTOR, NULL, NULL, novar);
		NEXT;
		NEXT;
		SKIP_BLANKS;
		FUNC5(ctxt, NULL, novar);
	    } else if (CUR == '/') {
		FUNC1(XSLT_OP_PARENT, NULL, NULL, novar);
		NEXT;
		SKIP_BLANKS;
		FUNC5(ctxt, NULL, novar);
	    }
	    return;
	}
	FUNC5(ctxt, name, novar);
    }
error:
    return;
}