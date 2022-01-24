#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xsltTransformContextPtr ;
typedef  TYPE_1__* xmlNodePtr ;
struct TYPE_8__ {scalar_t__ type; struct TYPE_8__* next; struct TYPE_8__* parent; struct TYPE_8__* children; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ XML_ENTITY_REF_NODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XSLT_TRACE_STRIP_SPACES ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 

void
FUNC7(xsltTransformContextPtr ctxt, xmlNodePtr node) {
    xmlNodePtr current;
#ifdef WITH_XSLT_DEBUG_PROCESS
    int nb = 0;
#endif


    current = node;
    while (current != NULL) {
	/*
	 * Cleanup children empty nodes if asked for
	 */
	if ((FUNC1(current)) &&
	    (current->children != NULL) &&
	    (FUNC5(ctxt, current))) {
	    xmlNodePtr delete = NULL, cur = current->children;

	    while (cur != NULL) {
		if (FUNC0(cur))
		    delete = cur;

		cur = cur->next;
		if (delete != NULL) {
		    FUNC4(delete);
		    FUNC3(delete);
		    delete = NULL;
#ifdef WITH_XSLT_DEBUG_PROCESS
		    nb++;
#endif
		}
	    }
	}

	/*
	 * Skip to next node in document order.
	 */
	if (node->type == XML_ENTITY_REF_NODE) {
	    /* process deep in entities */
	    FUNC7(ctxt, node->children);
	}
	if ((current->children != NULL) &&
            (current->type != XML_ENTITY_REF_NODE)) {
	    current = current->children;
	} else if (current->next != NULL) {
	    current = current->next;
	} else {
	    do {
		current = current->parent;
		if (current == NULL)
		    break;
		if (current == node)
		    goto done;
		if (current->next != NULL) {
		    current = current->next;
		    break;
		}
	    } while (current != NULL);
	}
    }

done:
#ifdef WITH_XSLT_DEBUG_PROCESS
    XSLT_TRACE(ctxt,XSLT_TRACE_STRIP_SPACES,xsltGenericDebug(xsltGenericDebugContext,
	     "xsltApplyStripSpaces: removed %d ignorable blank node\n", nb));
#endif
    return;
}