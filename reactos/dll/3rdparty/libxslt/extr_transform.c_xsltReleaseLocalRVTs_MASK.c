#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
typedef  TYPE_2__* xmlDocPtr ;
struct TYPE_13__ {scalar_t__ psvi; scalar_t__ next; int /*<<< orphan*/ * prev; } ;
struct TYPE_12__ {TYPE_2__* localRVT; } ;

/* Variables and functions */
 scalar_t__ XSLT_RVT_FUNC_RESULT ; 
 scalar_t__ XSLT_RVT_GLOBAL ; 
 scalar_t__ XSLT_RVT_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC5(xsltTransformContextPtr ctxt, xmlDocPtr base)
{
    xmlDocPtr cur = ctxt->localRVT, tmp;

    if (cur == base)
        return;
    if (cur->prev != NULL)
        FUNC4(ctxt, NULL, NULL, "localRVT not head of list\n");

    /* Reset localRVT early because some RVTs might be registered again. */
    ctxt->localRVT = base;
    if (base != NULL)
        base->prev = NULL;

    do {
        tmp = cur;
        cur = (xmlDocPtr) cur->next;
        if (tmp->psvi == XSLT_RVT_LOCAL) {
            FUNC3(ctxt, tmp);
        } else if (tmp->psvi == XSLT_RVT_GLOBAL) {
            FUNC2(ctxt, tmp);
        } else if (tmp->psvi == XSLT_RVT_FUNC_RESULT) {
            /*
             * This will either register the RVT again or move it to the
             * context variable.
             */
            FUNC1(ctxt, tmp);
            tmp->psvi = XSLT_RVT_FUNC_RESULT;
        } else {
            FUNC0(xmlGenericErrorContext,
                    "xsltReleaseLocalRVTs: Unexpected RVT flag %p\n",
                    tmp->psvi);
        }
    } while (cur != base);
}