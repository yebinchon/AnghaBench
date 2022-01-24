#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
typedef  int /*<<< orphan*/ * xsltTemplatePtr ;
typedef  TYPE_2__* xsltStylesheetPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_7__ {int /*<<< orphan*/ * namedTemplates; } ;
struct TYPE_6__ {TYPE_2__* style; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 

xsltTemplatePtr
FUNC2(xsltTransformContextPtr ctxt, const xmlChar *name,
	         const xmlChar *nameURI) {
    xsltTemplatePtr cur;
    xsltStylesheetPtr style;

    if ((ctxt == NULL) || (name == NULL))
	return(NULL);
    style = ctxt->style;
    while (style != NULL) {
        if (style->namedTemplates != NULL) {
            cur = (xsltTemplatePtr)
                FUNC0(style->namedTemplates, name, nameURI);
            if (cur != NULL)
                return(cur);
        }

	style = FUNC1(style);
    }
    return(NULL);
}