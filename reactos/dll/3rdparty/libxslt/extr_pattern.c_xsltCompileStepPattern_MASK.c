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
typedef  TYPE_1__* xsltParserContextPtr ;
typedef  scalar_t__ xsltAxis ;
typedef  TYPE_2__* xmlNsPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_8__ {int /*<<< orphan*/  const* href; } ;
struct TYPE_7__ {int error; int /*<<< orphan*/  elem; int /*<<< orphan*/  doc; } ;

/* Variables and functions */
 scalar_t__ AXIS_ATTRIBUTE ; 
 scalar_t__ AXIS_CHILD ; 
 char CUR ; 
 int /*<<< orphan*/  const* CUR_PTR ; 
 int /*<<< orphan*/  NEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SKIP_BLANKS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  XSLT_OP_ALL ; 
 int /*<<< orphan*/  XSLT_OP_ATTR ; 
 int /*<<< orphan*/  XSLT_OP_ELEM ; 
 int /*<<< orphan*/  XSLT_OP_NS ; 
 int /*<<< orphan*/  XSLT_OP_PREDICATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC11(xsltParserContextPtr ctxt, xmlChar *token, int novar) {
    xmlChar *name = NULL;
    const xmlChar *URI = NULL;
    xmlChar *URL = NULL;
    int level;
    xsltAxis axis = 0;

    SKIP_BLANKS;
    if ((token == NULL) && (CUR == '@')) {
	NEXT;
        axis = AXIS_ATTRIBUTE;
    }
parse_node_test:
    if (token == NULL)
	token = FUNC9(ctxt);
    if (token == NULL) {
	if (CUR == '*') {
	    NEXT;
	    if (axis == AXIS_ATTRIBUTE) {
                FUNC0(XSLT_OP_ATTR, NULL, NULL, novar);
            }
            else {
                FUNC0(XSLT_OP_ALL, NULL, NULL, novar);
            }
	    goto parse_predicate;
	} else {
	    FUNC10(NULL, NULL, NULL,
		    "xsltCompileStepPattern : Name expected\n");
	    ctxt->error = 1;
	    goto error;
	}
    }


    SKIP_BLANKS;
    if (CUR == '(') {
	FUNC7(ctxt, token, 0, novar, axis);
	FUNC2(token);
	token = NULL;
	if (ctxt->error)
	    goto error;
    } else if (CUR == ':') {
	NEXT;
	if (CUR != ':') {
	    xmlChar *prefix = token;
	    xmlNsPtr ns;

	    /*
	     * This is a namespace match
	     */
	    token = FUNC9(ctxt);
	    ns = FUNC3(ctxt->doc, ctxt->elem, prefix);
	    if (ns == NULL) {
		FUNC10(NULL, NULL, NULL,
	    "xsltCompileStepPattern : no namespace bound to prefix %s\n",
				 prefix);
		FUNC2(prefix);
		prefix=NULL;
		ctxt->error = 1;
		goto error;
	    } else {
		URL = FUNC5(ns->href);
	    }
	    FUNC2(prefix);
	    prefix=NULL;
	    if (token == NULL) {
		if (CUR == '*') {
		    NEXT;
                    if (axis == AXIS_ATTRIBUTE) {
                        FUNC0(XSLT_OP_ATTR, NULL, URL, novar);
			URL = NULL;
                    }
                    else {
                        FUNC0(XSLT_OP_NS, URL, NULL, novar);
			URL = NULL;
                    }
		} else {
		    FUNC10(NULL, NULL, NULL,
			    "xsltCompileStepPattern : Name expected\n");
		    ctxt->error = 1;
                    FUNC2(URL);
		    goto error;
		}
	    } else {
                if (axis == AXIS_ATTRIBUTE) {
                    FUNC0(XSLT_OP_ATTR, token, URL, novar);
		    token = NULL;
		    URL = NULL;
                }
                else {
                    FUNC0(XSLT_OP_ELEM, token, URL, novar);
		    token = NULL;
		    URL = NULL;
                }
	    }
	} else {
	    if (axis != 0) {
		FUNC10(NULL, NULL, NULL,
		    "xsltCompileStepPattern : NodeTest expected\n");
		ctxt->error = 1;
		goto error;
	    }
	    NEXT;
	    if (FUNC4(token, (const xmlChar *) "child")) {
	        axis = AXIS_CHILD;
	    } else if (FUNC4(token, (const xmlChar *) "attribute")) {
	        axis = AXIS_ATTRIBUTE;
	    } else {
		FUNC10(NULL, NULL, NULL,
		    "xsltCompileStepPattern : 'child' or 'attribute' expected\n");
		ctxt->error = 1;
		goto error;
	    }
	    FUNC2(token);
	    token = NULL;
            SKIP_BLANKS;
            token = FUNC9(ctxt);
	    goto parse_node_test;
	}
    } else {
	URI = FUNC8(ctxt->elem, &token);
	if (token == NULL) {
	    ctxt->error = 1;
	    goto error;
	}
	if (URI != NULL)
	    URL = FUNC5(URI);
        if (axis == AXIS_ATTRIBUTE) {
            FUNC0(XSLT_OP_ATTR, token, URL, novar);
	    token = NULL;
	    URL = NULL;
        }
        else {
            FUNC0(XSLT_OP_ELEM, token, URL, novar);
	    token = NULL;
	    URL = NULL;
        }
    }
parse_predicate:
    SKIP_BLANKS;
    level = 0;
    while (CUR == '[') {
	const xmlChar *q;
	xmlChar *ret = NULL;

	level++;
	NEXT;
	q = CUR_PTR;
	while (CUR != 0) {
	    /* Skip over nested predicates */
	    if (CUR == '[')
		level++;
	    else if (CUR == ']') {
		level--;
		if (level == 0)
		    break;
	    } else if (CUR == '"') {
		NEXT;
		while ((CUR != 0) && (CUR != '"'))
		    NEXT;
	    } else if (CUR == '\'') {
		NEXT;
		while ((CUR != 0) && (CUR != '\''))
		    NEXT;
	    }
	    NEXT;
	}
	if (CUR == 0) {
	    FUNC10(NULL, NULL, NULL,
		    "xsltCompileStepPattern : ']' expected\n");
	    ctxt->error = 1;
	    return;
        }
	ret = FUNC6(q, CUR_PTR - q);
	FUNC0(XSLT_OP_PREDICATE, ret, NULL, novar);
	ret = NULL;
	/* push the predicate lower than local test */
	FUNC1();
	NEXT;
	SKIP_BLANKS;
    }
    return;
error:
    if (token != NULL)
	FUNC2(token);
    if (name != NULL)
	FUNC2(name);
}