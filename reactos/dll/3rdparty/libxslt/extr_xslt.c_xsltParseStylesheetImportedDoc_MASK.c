#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  TYPE_2__* xsltPrincipalStylesheetDataPtr ;
typedef  TYPE_3__* xsltCompilerCtxtPtr ;
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  TYPE_4__* xmlDocPtr ;
struct TYPE_25__ {int /*<<< orphan*/  URL; int /*<<< orphan*/ * dict; } ;
struct TYPE_24__ {int depth; TYPE_2__* psData; TYPE_1__* style; int /*<<< orphan*/ * dict; } ;
struct TYPE_23__ {scalar_t__ nsMap; } ;
struct TYPE_22__ {scalar_t__ errors; TYPE_4__* doc; TYPE_3__* compCtxt; struct TYPE_22__* principal; int /*<<< orphan*/ * dict; TYPE_2__* principalData; struct TYPE_22__* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 TYPE_2__* FUNC11 () ; 
 TYPE_1__* FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,TYPE_4__*) ; 

xsltStylesheetPtr
FUNC15(xmlDocPtr doc,
			       xsltStylesheetPtr parentStyle) {
    xsltStylesheetPtr retStyle;

    if (doc == NULL)
	return(NULL);

    retStyle = FUNC12();
    if (retStyle == NULL)
	return(NULL);
    /*
    * Set the importing stylesheet module; also used to detect recursion.
    */
    retStyle->parent = parentStyle;
    /*
    * Adjust the string dict.
    */
    if (doc->dict != NULL) {
        FUNC0(retStyle->dict);
	retStyle->dict = doc->dict;
#ifdef WITH_XSLT_DEBUG
        xsltGenericDebug(xsltGenericDebugContext,
	    "reusing dictionary from %s for stylesheet\n",
	    doc->URL);
#endif
	FUNC1(retStyle->dict);
    }

    /*
    * TODO: Eliminate xsltGatherNamespaces(); we must not restrict
    *  the stylesheet to containt distinct namespace prefixes.
    */
    FUNC9(retStyle);

#ifdef XSLT_REFACTORED
    {
	xsltCompilerCtxtPtr cctxt;
	xsltStylesheetPtr oldCurSheet;

	if (parentStyle == NULL) {
	    xsltPrincipalStylesheetDataPtr principalData;
	    /*
	    * Principal stylesheet
	    * --------------------
	    */
	    retStyle->principal = retStyle;
	    /*
	    * Create extra data for the principal stylesheet.
	    */
	    principalData = xsltNewPrincipalStylesheetData();
	    if (principalData == NULL) {
		xsltFreeStylesheet(retStyle);
		return(NULL);
	    }
	    retStyle->principalData = principalData;
	    /*
	    * Create the compilation context
	    * ------------------------------
	    * (only once; for the principal stylesheet).
	    * This is currently the only function where the
	    * compilation context is created.
	    */
	    cctxt = xsltCompilationCtxtCreate(retStyle);
	    if (cctxt == NULL) {
		xsltFreeStylesheet(retStyle);
		return(NULL);
	    }
	    retStyle->compCtxt = (void *) cctxt;
	    cctxt->style = retStyle;
	    cctxt->dict = retStyle->dict;
	    cctxt->psData = principalData;
	    /*
	    * Push initial dummy node info.
	    */
	    cctxt->depth = -1;
	    xsltCompilerNodePush(cctxt, (xmlNodePtr) doc);
	} else {
	    /*
	    * Imported stylesheet.
	    */
	    retStyle->principal = parentStyle->principal;
	    cctxt = parentStyle->compCtxt;
	    retStyle->compCtxt = cctxt;
	}
	/*
	* Save the old and set the current stylesheet structure in the
	* compilation context.
	*/
	oldCurSheet = cctxt->style;
	cctxt->style = retStyle;

	retStyle->doc = doc;
	xsltParseStylesheetProcess(retStyle, doc);

	cctxt->style = oldCurSheet;
	if (parentStyle == NULL) {
	    /*
	    * Pop the initial dummy node info.
	    */
	    xsltCompilerNodePop(cctxt, (xmlNodePtr) doc);
	} else {
	    /*
	    * Clear the compilation context of imported
	    * stylesheets.
	    * TODO: really?
	    */
	    /* retStyle->compCtxt = NULL; */
	}
	/*
	* Free the stylesheet if there were errors.
	*/
	if (retStyle != NULL) {
	    if (retStyle->errors != 0) {
#ifdef XSLT_REFACTORED_XSLT_NSCOMP
		/*
		* Restore all changes made to namespace URIs of ns-decls.
		*/
		if (cctxt->psData->nsMap)
		    xsltRestoreDocumentNamespaces(cctxt->psData->nsMap, doc);
#endif
		/*
		* Detach the doc from the stylesheet; otherwise the doc
		* will be freed in xsltFreeStylesheet().
		*/
		retStyle->doc = NULL;
		/*
		* Cleanup the doc if its the main stylesheet.
		*/
		if (parentStyle == NULL) {
		    xsltCleanupStylesheetTree(doc, xmlDocGetRootElement(doc));
		    if (retStyle->compCtxt != NULL) {
			xsltCompilationCtxtFree(retStyle->compCtxt);
			retStyle->compCtxt = NULL;
		    }
		}

		xsltFreeStylesheet(retStyle);
		retStyle = NULL;
	    }
	}
    }

#else /* XSLT_REFACTORED */
    /*
    * Old behaviour.
    */
    retStyle->doc = doc;
    if (FUNC13(retStyle, doc) == NULL) {
		retStyle->doc = NULL;
		FUNC8(retStyle);
		retStyle = NULL;
    }
    if (retStyle != NULL) {
	if (retStyle->errors != 0) {
	    retStyle->doc = NULL;
	    if (parentStyle == NULL)
		FUNC3(doc,
		    FUNC2(doc));
	    FUNC8(retStyle);
	    retStyle = NULL;
	}
    }
#endif /* else of XSLT_REFACTORED */

    return(retStyle);
}