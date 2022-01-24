#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltParserContextPtr ;
typedef  scalar_t__ xsltAxis ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_4__ {int error; } ;

/* Variables and functions */
 scalar_t__ AXIS_ATTRIBUTE ; 
 char CUR ; 
 int /*<<< orphan*/  NEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SKIP_BLANKS ; 
 int /*<<< orphan*/  XSLT_OP_ATTR ; 
 int /*<<< orphan*/  XSLT_OP_COMMENT ; 
 int /*<<< orphan*/  XSLT_OP_ID ; 
 int /*<<< orphan*/  XSLT_OP_KEY ; 
 int /*<<< orphan*/  XSLT_OP_NODE ; 
 int /*<<< orphan*/  XSLT_OP_PI ; 
 int /*<<< orphan*/  XSLT_OP_TEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC5(xsltParserContextPtr ctxt, xmlChar *name,
		int aid, int novar, xsltAxis axis) {
    xmlChar *lit = NULL;
    xmlChar *lit2 = NULL;

    if (CUR != '(') {
	FUNC4(NULL, NULL, NULL,
		"xsltCompileIdKeyPattern : ( expected\n");
	ctxt->error = 1;
	return;
    }
    if ((aid) && (FUNC2(name, (const xmlChar *)"id"))) {
	if (axis != 0) {
	    FUNC4(NULL, NULL, NULL,
		    "xsltCompileIdKeyPattern : NodeTest expected\n");
	    ctxt->error = 1;
	    return;
	}
	NEXT;
	SKIP_BLANKS;
        lit = FUNC3(ctxt);
	if (ctxt->error) {
	    FUNC4(NULL, NULL, NULL,
		    "xsltCompileIdKeyPattern : Literal expected\n");
	    return;
	}
	SKIP_BLANKS;
	if (CUR != ')') {
	    FUNC4(NULL, NULL, NULL,
		    "xsltCompileIdKeyPattern : ) expected\n");
	    FUNC1(lit);
	    ctxt->error = 1;
	    return;
	}
	NEXT;
	FUNC0(XSLT_OP_ID, lit, NULL, novar);
	lit = NULL;
    } else if ((aid) && (FUNC2(name, (const xmlChar *)"key"))) {
	if (axis != 0) {
	    FUNC4(NULL, NULL, NULL,
		    "xsltCompileIdKeyPattern : NodeTest expected\n");
	    ctxt->error = 1;
	    return;
	}
	NEXT;
	SKIP_BLANKS;
        lit = FUNC3(ctxt);
	if (ctxt->error) {
	    FUNC4(NULL, NULL, NULL,
		    "xsltCompileIdKeyPattern : Literal expected\n");
	    return;
	}
	SKIP_BLANKS;
	if (CUR != ',') {
	    FUNC4(NULL, NULL, NULL,
		    "xsltCompileIdKeyPattern : , expected\n");
	    FUNC1(lit);
	    ctxt->error = 1;
	    return;
	}
	NEXT;
	SKIP_BLANKS;
        lit2 = FUNC3(ctxt);
	if (ctxt->error) {
	    FUNC4(NULL, NULL, NULL,
		    "xsltCompileIdKeyPattern : Literal expected\n");
	    FUNC1(lit);
	    return;
	}
	SKIP_BLANKS;
	if (CUR != ')') {
	    FUNC4(NULL, NULL, NULL,
		    "xsltCompileIdKeyPattern : ) expected\n");
	    FUNC1(lit);
	    FUNC1(lit2);
	    ctxt->error = 1;
	    return;
	}
	NEXT;
	/* URGENT TODO: support namespace in keys */
	FUNC0(XSLT_OP_KEY, lit, lit2, novar);
	lit = NULL;
	lit2 = NULL;
    } else if (FUNC2(name, (const xmlChar *)"processing-instruction")) {
	NEXT;
	SKIP_BLANKS;
	if (CUR != ')') {
	    lit = FUNC3(ctxt);
	    if (ctxt->error) {
		FUNC4(NULL, NULL, NULL,
			"xsltCompileIdKeyPattern : Literal expected\n");
		return;
	    }
	    SKIP_BLANKS;
	    if (CUR != ')') {
		FUNC4(NULL, NULL, NULL,
			"xsltCompileIdKeyPattern : ) expected\n");
		ctxt->error = 1;
                FUNC1(lit);
		return;
	    }
	}
	NEXT;
	FUNC0(XSLT_OP_PI, lit, NULL, novar);
	lit = NULL;
    } else if (FUNC2(name, (const xmlChar *)"text")) {
	NEXT;
	SKIP_BLANKS;
	if (CUR != ')') {
	    FUNC4(NULL, NULL, NULL,
		    "xsltCompileIdKeyPattern : ) expected\n");
	    ctxt->error = 1;
	    return;
	}
	NEXT;
	FUNC0(XSLT_OP_TEXT, NULL, NULL, novar);
    } else if (FUNC2(name, (const xmlChar *)"comment")) {
	NEXT;
	SKIP_BLANKS;
	if (CUR != ')') {
	    FUNC4(NULL, NULL, NULL,
		    "xsltCompileIdKeyPattern : ) expected\n");
	    ctxt->error = 1;
	    return;
	}
	NEXT;
	FUNC0(XSLT_OP_COMMENT, NULL, NULL, novar);
    } else if (FUNC2(name, (const xmlChar *)"node")) {
	NEXT;
	SKIP_BLANKS;
	if (CUR != ')') {
	    FUNC4(NULL, NULL, NULL,
		    "xsltCompileIdKeyPattern : ) expected\n");
	    ctxt->error = 1;
	    return;
	}
	NEXT;
	if (axis == AXIS_ATTRIBUTE) {
	    FUNC0(XSLT_OP_ATTR, NULL, NULL, novar);
	}
	else {
	    FUNC0(XSLT_OP_NODE, NULL, NULL, novar);
	}
    } else if (aid) {
	FUNC4(NULL, NULL, NULL,
	    "xsltCompileIdKeyPattern : expecting 'key' or 'id' or node type\n");
	ctxt->error = 1;
	return;
    } else {
	FUNC4(NULL, NULL, NULL,
	    "xsltCompileIdKeyPattern : node type\n");
	ctxt->error = 1;
	return;
    }
error:
    return;
}