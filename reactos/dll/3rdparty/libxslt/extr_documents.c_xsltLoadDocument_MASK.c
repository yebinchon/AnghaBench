#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xsltTransformContextPtr ;
typedef  TYPE_3__* xsltDocumentPtr ;
typedef  int /*<<< orphan*/ * xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_14__ {struct TYPE_14__* next; TYPE_1__* doc; } ;
struct TYPE_13__ {scalar_t__ xinclude; scalar_t__ debugStatus; int /*<<< orphan*/  parserOptions; int /*<<< orphan*/  dict; TYPE_3__* docList; int /*<<< orphan*/ * sec; } ;
struct TYPE_12__ {int /*<<< orphan*/ * URL; } ;

/* Variables and functions */
 scalar_t__ XSLT_DEBUG_NONE ; 
 int /*<<< orphan*/  XSLT_LOAD_DOCUMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 TYPE_3__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*) ; 

xsltDocumentPtr
FUNC11(xsltTransformContextPtr ctxt, const xmlChar *URI) {
    xsltDocumentPtr ret;
    xmlDocPtr doc;

    if ((ctxt == NULL) || (URI == NULL))
	return(NULL);

    /*
     * Security framework check
     */
    if (ctxt->sec != NULL) {
	int res;

	res = FUNC6(ctxt->sec, ctxt, URI);
	if (res == 0) {
	    FUNC10(ctxt, NULL, NULL,
		 "xsltLoadDocument: read rights for %s denied\n",
			     URI);
	    return(NULL);
	}
    }

    /*
     * Walk the context list to find the document if preparsed
     */
    ret = ctxt->docList;
    while (ret != NULL) {
	if ((ret->doc != NULL) && (ret->doc->URL != NULL) &&
	    (FUNC1(ret->doc->URL, URI)))
	    return(ret);
	ret = ret->next;
    }

    doc = FUNC7(URI, ctxt->dict, ctxt->parserOptions,
                               (void *) ctxt, XSLT_LOAD_DOCUMENT);

    if (doc == NULL)
	return(NULL);

    if (ctxt->xinclude != 0) {
#ifdef LIBXML_XINCLUDE_ENABLED
#if LIBXML_VERSION >= 20603
	xmlXIncludeProcessFlags(doc, ctxt->parserOptions);
#else
	xmlXIncludeProcess(doc);
#endif
#else
	FUNC10(ctxt, NULL, NULL,
	    "xsltLoadDocument(%s) : XInclude processing not compiled in\n",
	                 URI);
#endif
    }
    /*
     * Apply white-space stripping if asked for
     */
    if (FUNC8(ctxt))
	FUNC5(ctxt, FUNC0(doc));
    if (ctxt->debugStatus == XSLT_DEBUG_NONE)
	FUNC4(doc);

    ret = FUNC9(ctxt, doc);
    return(ret);
}