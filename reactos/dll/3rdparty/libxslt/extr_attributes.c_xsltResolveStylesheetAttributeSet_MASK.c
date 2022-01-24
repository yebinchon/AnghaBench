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
typedef  TYPE_1__* xsltStylesheetPtr ;
struct TYPE_8__ {TYPE_1__* style; TYPE_1__* topStyle; } ;
typedef  TYPE_2__ xsltAttrSetContext ;
struct TYPE_7__ {int /*<<< orphan*/ * attributeSets; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  xsltResolveSASCallback ; 

void
FUNC5(xsltStylesheetPtr style) {
    xsltStylesheetPtr cur;
    xsltAttrSetContext asctx;

#ifdef WITH_XSLT_DEBUG_ATTRIBUTES
    xsltGenericDebug(xsltGenericDebugContext,
	    "Resolving attribute sets references\n");
#endif
    asctx.topStyle = style;
    cur = style;
    while (cur != NULL) {
	if (cur->attributeSets != NULL) {
	    if (style->attributeSets == NULL) {
#ifdef WITH_XSLT_DEBUG_ATTRIBUTES
		xsltGenericDebug(xsltGenericDebugContext,
		    "creating attribute set table\n");
#endif
		style->attributeSets = FUNC0(10);
	    }
            asctx.style = cur;
	    FUNC2(cur->attributeSets, xsltResolveSASCallback,
                            &asctx);

            if (cur != style) {
                /*
                 * the attribute lists have either been migrated to style
                 * or freed directly in xsltResolveSASCallback()
                 */
                FUNC1(cur->attributeSets, NULL);
                cur->attributeSets = NULL;
            }
	}
	cur = FUNC4(cur);
    }
}