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
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xsltTransformContextPtr ;
typedef  TYPE_3__* xsltStackElemPtr ;
typedef  int /*<<< orphan*/  xsltStackElem ;
typedef  TYPE_4__* xmlDocPtr ;
struct TYPE_15__ {scalar_t__ psvi; scalar_t__ next; } ;
struct TYPE_14__ {struct TYPE_14__* next; TYPE_2__* context; TYPE_4__* fragment; int /*<<< orphan*/ * value; } ;
struct TYPE_13__ {TYPE_1__* cache; } ;
struct TYPE_12__ {int nbStackItems; int /*<<< orphan*/  dbgCachedVars; TYPE_3__* stackItems; } ;

/* Variables and functions */
 scalar_t__ XSLT_RVT_FUNC_RESULT ; 
 scalar_t__ XSLT_RVT_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  xmlGenericErrorContext ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC6(xsltStackElemPtr elem) {
    if (elem == NULL)
	return;
    if (elem->value != NULL)
	FUNC3(elem->value);
    /*
    * Release the list of temporary Result Tree Fragments.
    */
    if (elem->context) {
	xmlDocPtr cur;

	while (elem->fragment != NULL) {
	    cur = elem->fragment;
	    elem->fragment = (xmlDocPtr) cur->next;

            if (cur->psvi == XSLT_RVT_LOCAL) {
		FUNC5(elem->context, cur);
            } else if (cur->psvi == XSLT_RVT_FUNC_RESULT) {
                FUNC4(elem->context, cur);
                cur->psvi = XSLT_RVT_FUNC_RESULT;
            } else {
                FUNC2(xmlGenericErrorContext,
                        "xsltFreeStackElem: Unexpected RVT flag %p\n",
                        cur->psvi);
            }
	}
    }
    /*
    * Cache or free the variable structure.
    */
    if (elem->context && (elem->context->cache->nbStackItems < 50)) {
	/*
	* Store the item in the cache.
	*/
	xsltTransformContextPtr ctxt = elem->context;
	FUNC0(elem, 0, sizeof(xsltStackElem));
	elem->context = ctxt;
	elem->next = ctxt->cache->stackItems;
	ctxt->cache->stackItems = elem;
	ctxt->cache->nbStackItems++;
#ifdef XSLT_DEBUG_PROFILE_CACHE
	ctxt->cache->dbgCachedVars++;
#endif
	return;
    }
    FUNC1(elem);
}