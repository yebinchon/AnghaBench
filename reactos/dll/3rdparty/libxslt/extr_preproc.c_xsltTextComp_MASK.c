#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  TYPE_2__* xsltStylePreCompPtr ;
typedef  TYPE_2__* xsltStyleItemTextPtr ;
typedef  TYPE_4__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_15__ {scalar_t__ type; TYPE_2__* psvi; } ;
struct TYPE_14__ {int noescape; TYPE_4__* inst; } ;
struct TYPE_13__ {int /*<<< orphan*/  warnings; } ;

/* Variables and functions */
 scalar_t__ XML_ELEMENT_NODE ; 
 int /*<<< orphan*/  XSLT_FUNC_TEXT ; 
 int /*<<< orphan*/  XSLT_NAMESPACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,TYPE_4__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_4__*,char*) ; 

__attribute__((used)) static void
FUNC4(xsltStylesheetPtr style, xmlNodePtr inst) {
#ifdef XSLT_REFACTORED
    xsltStyleItemTextPtr comp;
#else
    xsltStylePreCompPtr comp;
#endif
    const xmlChar *prop;

    if ((style == NULL) || (inst == NULL) || (inst->type != XML_ELEMENT_NODE))
	return;

#ifdef XSLT_REFACTORED
    comp = (xsltStyleItemTextPtr) xsltNewStylePreComp(style, XSLT_FUNC_TEXT);
#else
    comp = FUNC2(style, XSLT_FUNC_TEXT);
#endif
    if (comp == NULL)
	return;
    inst->psvi = comp;
    comp->inst = inst;
    comp->noescape = 0;

    prop = FUNC1(style, inst,
	    (const xmlChar *)"disable-output-escaping",
			XSLT_NAMESPACE);
    if (prop != NULL) {
	if (FUNC0(prop, (const xmlChar *)"yes")) {
	    comp->noescape = 1;
	} else if (!FUNC0(prop,
	    (const xmlChar *)"no")){
	    FUNC3(NULL, style, inst,
		"xsl:text: disable-output-escaping allows only yes or no\n");
	    if (style != NULL) style->warnings++;
	}
    }
}