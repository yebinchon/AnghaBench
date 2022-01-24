#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
typedef  int /*<<< orphan*/  xsltTransformContext ;
struct TYPE_12__ {int /*<<< orphan*/ * nsHash; } ;
struct TYPE_11__ {scalar_t__ extrasNr; int /*<<< orphan*/  dict; int /*<<< orphan*/  cache; struct TYPE_11__* extras; int /*<<< orphan*/ * info; int /*<<< orphan*/  (* deallocate ) (int /*<<< orphan*/ *) ;struct TYPE_11__* profTab; struct TYPE_11__* varsTab; struct TYPE_11__* templTab; TYPE_8__* xpathCtxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(xsltTransformContextPtr ctxt) {
    if (ctxt == NULL)
	return;

    /*
     * Shutdown the extension modules associated to the stylesheet
     * used if needed.
     */
    FUNC10(ctxt);

    if (ctxt->xpathCtxt != NULL) {
	ctxt->xpathCtxt->nsHash = NULL;
	FUNC4(ctxt->xpathCtxt);
    }
    if (ctxt->templTab != NULL)
	FUNC3(ctxt->templTab);
    if (ctxt->varsTab != NULL)
	FUNC3(ctxt->varsTab);
    if (ctxt->profTab != NULL)
	FUNC3(ctxt->profTab);
    if ((ctxt->extrasNr > 0) && (ctxt->extras != NULL)) {
	int i;

	for (i = 0;i < ctxt->extrasNr;i++) {
	    if ((ctxt->extras[i].deallocate != NULL) &&
		(ctxt->extras[i].info != NULL))
		ctxt->extras[i].deallocate(ctxt->extras[i].info);
	}
	FUNC3(ctxt->extras);
    }
    FUNC7(ctxt);
    FUNC6(ctxt);
    FUNC5(ctxt);
    FUNC8(ctxt);
    FUNC11(ctxt->cache);
    FUNC2(ctxt->dict);
#ifdef WITH_XSLT_DEBUG
    xsltGenericDebug(xsltGenericDebugContext,
                     "freeing transformation dictionary\n");
#endif
    FUNC0(ctxt, -1, sizeof(xsltTransformContext));
    FUNC3(ctxt);
}