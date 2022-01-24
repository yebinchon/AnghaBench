#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
typedef  TYPE_2__* xsltTemplatePtr ;
typedef  int /*<<< orphan*/ * xmlNodePtr ;
struct TYPE_9__ {int /*<<< orphan*/ * elem; } ;
struct TYPE_8__ {int debugStatus; int /*<<< orphan*/ * inst; } ;

/* Variables and functions */
 int XSLT_DEBUG_NONE ; 
#define  XSLT_DEBUG_QUIT 129 
#define  XSLT_DEBUG_RUN_RESTART 128 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static xmlNodePtr
FUNC3(xsltTransformContextPtr ctxt,
				     xmlNodePtr contextNode,
				     xmlNodePtr list,
				     xsltTemplatePtr templ,
				     int *addCallResult)
{
    xmlNodePtr debugedNode = NULL;

    if (ctxt->debugStatus != XSLT_DEBUG_NONE) {
        if (templ) {
            *addCallResult = FUNC0(templ, templ->elem);
        } else {
            *addCallResult = FUNC0(NULL, list);
        }
        switch (ctxt->debugStatus) {
            case XSLT_DEBUG_RUN_RESTART:
            case XSLT_DEBUG_QUIT:
                if (*addCallResult)
                    FUNC1();
                return(NULL);
        }
        if (templ) {
            FUNC2(templ->elem, contextNode, templ, ctxt);
            debugedNode = templ->elem;
        } else if (list) {
            FUNC2(list, contextNode, templ, ctxt);
            debugedNode = list;
        } else if (ctxt->inst) {
            FUNC2(ctxt->inst, contextNode, templ, ctxt);
            debugedNode = ctxt->inst;
        }
    }
    return(debugedNode);
}