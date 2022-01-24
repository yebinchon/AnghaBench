#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  int /*<<< orphan*/  xsltStylesheet ;
struct TYPE_16__ {int /*<<< orphan*/  dict; int /*<<< orphan*/ * doc; int /*<<< orphan*/ * principalData; struct TYPE_16__* principal; int /*<<< orphan*/ * imports; scalar_t__ attVTs; struct TYPE_16__* mediaType; struct TYPE_16__* doctypeSystem; struct TYPE_16__* doctypePublic; struct TYPE_16__* encoding; struct TYPE_16__* version; struct TYPE_16__* methodURI; struct TYPE_16__* method; struct TYPE_16__* exclPrefixTab; int /*<<< orphan*/ * nsHash; int /*<<< orphan*/ * stripSpaces; int /*<<< orphan*/ * cdataSection; int /*<<< orphan*/ * variables; int /*<<< orphan*/  templates; int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 

void
FUNC25(xsltStylesheetPtr style)
{
    if (style == NULL)
        return;

#ifdef XSLT_REFACTORED
    /*
    * Start with a cleanup of the main stylesheet's doc.
    */
    if ((style->principal == style) && (style->doc))
	xsltCleanupStylesheetTree(style->doc,
	    xmlDocGetRootElement(style->doc));
#ifdef XSLT_REFACTORED_XSLT_NSCOMP
    /*
    * Restore changed ns-decls before freeing the document.
    */
    if ((style->doc != NULL) &&
	XSLT_HAS_INTERNAL_NSMAP(style))
    {
	xsltRestoreDocumentNamespaces(XSLT_GET_INTERNAL_NSMAP(style),
	    style->doc);
    }
#endif /* XSLT_REFACTORED_XSLT_NSCOMP */
#else
    /*
    * Start with a cleanup of the main stylesheet's doc.
    */
    if ((style->parent == NULL) && (style->doc))
	FUNC8(style->doc,
	    FUNC4(style->doc));
#endif /* XSLT_REFACTORED */

    FUNC13(style);
    FUNC12(style);
    FUNC20(style);
    FUNC11(style);
    FUNC21(style->templates);
    FUNC10(style);
    FUNC14(style);
    FUNC18(style);
    /*
    * Free documents of all included stylsheet modules of this
    * stylesheet level.
    */
    FUNC17(style);
    /*
    * TODO: Best time to shutdown extension stuff?
    */
    FUNC24(style);

    if (style->variables != NULL)
        FUNC16(style->variables);
    if (style->cdataSection != NULL)
        FUNC7(style->cdataSection, NULL);
    if (style->stripSpaces != NULL)
        FUNC7(style->stripSpaces, NULL);
    if (style->nsHash != NULL)
        FUNC7(style->nsHash, NULL);
    if (style->exclPrefixTab != NULL)
        FUNC5(style->exclPrefixTab);
    if (style->method != NULL)
        FUNC5(style->method);
    if (style->methodURI != NULL)
        FUNC5(style->methodURI);
    if (style->version != NULL)
        FUNC5(style->version);
    if (style->encoding != NULL)
        FUNC5(style->encoding);
    if (style->doctypePublic != NULL)
        FUNC5(style->doctypePublic);
    if (style->doctypeSystem != NULL)
        FUNC5(style->doctypeSystem);
    if (style->mediaType != NULL)
        FUNC5(style->mediaType);
    if (style->attVTs)
        FUNC9(style->attVTs);
    if (style->imports != NULL)
        FUNC19(style->imports);

#ifdef XSLT_REFACTORED
    /*
    * If this is the principal stylesheet, then
    * free its internal data.
    */
    if (style->principal == style) {
	if (style->principalData) {
	    xsltFreePrincipalStylesheetData(style->principalData);
	    style->principalData = NULL;
	}
    }
#endif
    /*
    * Better to free the main document of this stylesheet level
    * at the end - so here.
    */
    if (style->doc != NULL) {
        FUNC6(style->doc);
    }

#ifdef WITH_XSLT_DEBUG
    xsltGenericDebug(xsltGenericDebugContext,
                     "freeing dictionary from stylesheet\n");
#endif
    FUNC3(style->dict);

    FUNC2(style, -1, sizeof(xsltStylesheet));
    FUNC5(style);
}