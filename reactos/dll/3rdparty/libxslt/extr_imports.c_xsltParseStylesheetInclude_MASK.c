#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  TYPE_2__* xsltStyleItemIncludePtr ;
typedef  TYPE_3__* xsltDocumentPtr ;
typedef  TYPE_4__* xmlNodePtr ;
typedef  TYPE_5__* xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_23__ {int /*<<< orphan*/  URL; } ;
struct TYPE_22__ {int /*<<< orphan*/ * psvi; } ;
struct TYPE_21__ {int preproc; struct TYPE_21__* includes; TYPE_5__* doc; } ;
struct TYPE_20__ {TYPE_3__* include; } ;
struct TYPE_19__ {int nopreproc; TYPE_5__* doc; TYPE_3__* includes; int /*<<< orphan*/  errors; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_4__*,char*,...) ; 

int
FUNC9(xsltStylesheetPtr style, xmlNodePtr cur) {
    int ret = -1;
    xmlDocPtr oldDoc;
    xmlChar *base = NULL;
    xmlChar *uriRef = NULL;
    xmlChar *URI = NULL;
    xsltStylesheetPtr result;
    xsltDocumentPtr include;
    xsltDocumentPtr docptr;
    int oldNopreproc;

    if ((cur == NULL) || (style == NULL))
	return (ret);

    uriRef = FUNC3(cur, (const xmlChar *)"href", NULL);
    if (uriRef == NULL) {
	FUNC8(NULL, style, cur,
	    "xsl:include : missing href attribute\n");
	goto error;
    }

    base = FUNC4(style->doc, cur);
    URI = FUNC1(uriRef, base);
    if (URI == NULL) {
	FUNC8(NULL, style, cur,
	    "xsl:include : invalid URI reference %s\n", uriRef);
	goto error;
    }

    /*
     * in order to detect recursion, we check all previously included
     * stylesheets.
     */
    docptr = style->includes;
    while (docptr != NULL) {
        if (FUNC5(docptr->doc->URL, URI)) {
	    FUNC8(NULL, style, cur,
	        "xsl:include : recursion detected on included URL %s\n", URI);
	    goto error;
	}
	docptr = docptr->includes;
    }

    include = FUNC6(style, URI);
    if (include == NULL) {
	FUNC8(NULL, style, cur,
	    "xsl:include : unable to load %s\n", URI);
	goto error;
    }
#ifdef XSLT_REFACTORED
    if (IS_XSLT_ELEM_FAST(cur) && (cur->psvi != NULL)) {
	((xsltStyleItemIncludePtr) cur->psvi)->include = include;
    } else {
	xsltTransformError(NULL, style, cur,
	    "Internal error: (xsltParseStylesheetInclude) "
	    "The xsl:include element was not compiled.\n", URI);
	style->errors++;
    }
#endif
    oldDoc = style->doc;
    style->doc = include->doc;
    /* chain to stylesheet for recursion checking */
    include->includes = style->includes;
    style->includes = include;
    oldNopreproc = style->nopreproc;
    style->nopreproc = include->preproc;
    /*
    * TODO: This will change some values of the
    *  including stylesheet with every included module
    *  (e.g. excluded-result-prefixes)
    *  We need to strictly seperate such stylesheet-owned values.
    */
    result = FUNC7(style, include->doc);
    style->nopreproc = oldNopreproc;
    include->preproc = 1;
    style->includes = include->includes;
    style->doc = oldDoc;
    if (result == NULL) {
	ret = -1;
	goto error;
    }
    ret = 0;

error:
    if (uriRef != NULL)
	FUNC2(uriRef);
    if (base != NULL)
	FUNC2(base);
    if (URI != NULL)
	FUNC2(URI);

    return (ret);
}