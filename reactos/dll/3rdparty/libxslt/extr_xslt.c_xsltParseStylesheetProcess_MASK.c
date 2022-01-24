#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTemplatePtr ;
typedef  TYPE_2__* xsltStylesheetPtr ;
typedef  int /*<<< orphan*/ * xmlNodePtr ;
typedef  TYPE_3__* xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_19__ {int /*<<< orphan*/  children; } ;
struct TYPE_18__ {int literal_result; int forwards_compatible; TYPE_1__* templates; int /*<<< orphan*/  warnings; int /*<<< orphan*/  nopreproc; } ;
struct TYPE_17__ {int /*<<< orphan*/  content; int /*<<< orphan*/ * elem; int /*<<< orphan*/  match; struct TYPE_17__* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  XSLT_NAMESPACE ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,char*) ; 

xsltStylesheetPtr
FUNC17(xsltStylesheetPtr ret, xmlDocPtr doc) {
    xmlNodePtr cur;

    FUNC9();

    if (doc == NULL)
	return(NULL);
    if (ret == NULL)
	return(ret);

    /*
     * First steps, remove blank nodes,
     * locate the xsl:stylesheet element and the
     * namespace declaration.
     */
    cur = FUNC2(doc);
    if (cur == NULL) {
	FUNC16(NULL, ret, (xmlNodePtr) doc,
		"xsltParseStylesheetProcess : empty stylesheet\n");
	return(NULL);
    }

    if ((FUNC0(cur)) &&
	((FUNC1(cur, "stylesheet")) ||
	 (FUNC1(cur, "transform")))) {
#ifdef WITH_XSLT_DEBUG_PARSING
	xsltGenericDebug(xsltGenericDebugContext,
		"xsltParseStylesheetProcess : found stylesheet\n");
#endif
	ret->literal_result = 0;
	FUNC11(ret, cur, 1);
	FUNC12(ret, cur, 1);
    } else {
	FUNC11(ret, cur, 0);
	FUNC12(ret, cur, 0);
	ret->literal_result = 1;
    }
    if (!ret->nopreproc) {
	FUNC15(ret, cur);
    }
    if (ret->literal_result == 0) {
	FUNC13(ret, cur);
    } else {
	xmlChar *prop;
	xsltTemplatePtr template;

	/*
	 * the document itself might be the template, check xsl:version
	 */
	prop = FUNC4(cur, (const xmlChar *)"version", XSLT_NAMESPACE);
	if (prop == NULL) {
	    FUNC16(NULL, ret, cur,
		"xsltParseStylesheetProcess : document is not a stylesheet\n");
	    return(NULL);
	}

#ifdef WITH_XSLT_DEBUG_PARSING
        xsltGenericDebug(xsltGenericDebugContext,
		"xsltParseStylesheetProcess : document is stylesheet\n");
#endif

	if ((!FUNC5(prop, (const xmlChar *)"1.0")) &&
            (!FUNC5(prop, (const xmlChar *)"1.1"))) {
	    FUNC16(NULL, ret, cur,
		"xsl:version: only 1.1 features are supported\n");
            ret->forwards_compatible = 1;
	    ret->warnings++;
	}
	FUNC3(prop);

	/*
	 * Create and link the template
	 */
	template = FUNC10();
	if (template == NULL) {
	    return(NULL);
	}
	template->next = ret->templates;
	ret->templates = template;
	template->match = FUNC6((const xmlChar *)"/");

	/*
	 * parse the content and register the pattern
	 */
	FUNC14(ret, (xmlNodePtr) doc);
	template->elem = (xmlNodePtr) doc;
	template->content = doc->children;
	FUNC7(ret, template, NULL, NULL);
	ret->literal_result = 1;
    }

    return(ret);
}