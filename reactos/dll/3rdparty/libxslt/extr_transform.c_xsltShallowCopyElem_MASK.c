#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
typedef  TYPE_2__* xmlNodePtr ;
struct TYPE_32__ {int /*<<< orphan*/ * prefix; int /*<<< orphan*/ * href; } ;
struct TYPE_31__ {scalar_t__ type; int /*<<< orphan*/  name; TYPE_9__* ns; int /*<<< orphan*/ * nsDef; int /*<<< orphan*/  doc; } ;
struct TYPE_30__ {int /*<<< orphan*/  output; } ;

/* Variables and functions */
 scalar_t__ XML_CDATA_SECTION_NODE ; 
 scalar_t__ XML_DTD_NODE ; 
 scalar_t__ XML_ELEMENT_NODE ; 
 scalar_t__ XML_TEXT_NODE ; 
 TYPE_2__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC5 (TYPE_1__*,TYPE_2__*,TYPE_9__*,TYPE_2__*) ; 
 TYPE_9__* FUNC6 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*,char*,...) ; 

__attribute__((used)) static xmlNodePtr
FUNC8(xsltTransformContextPtr ctxt, xmlNodePtr node,
		    xmlNodePtr insert, int isLRE)
{
    xmlNodePtr copy;

    if ((node->type == XML_DTD_NODE) || (insert == NULL))
	return(NULL);
    if ((node->type == XML_TEXT_NODE) ||
	(node->type == XML_CDATA_SECTION_NODE))
	return(FUNC4(ctxt, insert, node, 0));

    copy = FUNC0(node, insert->doc, 0);
    if (copy != NULL) {
	copy->doc = ctxt->output;
	copy = FUNC1(insert, copy);
        if (copy == NULL) {
             FUNC7(ctxt, NULL, node,
                "xsltShallowCopyElem: copy failed\n");
             return (copy);
        }

	if (node->type == XML_ELEMENT_NODE) {
	    /*
	     * Add namespaces as they are needed
	     */
	    if (node->nsDef != NULL) {
		/*
		* TODO: Remove the LRE case in the refactored code
		* gets enabled.
		*/
		if (isLRE)
		    FUNC2(ctxt, copy, node->nsDef);
		else
		    FUNC3(copy, node->nsDef);
	    }

	    /*
	    * URGENT TODO: The problem with this is that it does not
	    *  copy over all namespace nodes in scope.
	    *  The damn thing about this is, that we would need to
	    *  use the xmlGetNsList(), for every single node; this is
	    *  also done in xsltCopyTree(), but only for the top node.
	    */
	    if (node->ns != NULL) {
		if (isLRE) {
		    /*
		    * REVISIT TODO: Since the non-refactored code still does
		    *  ns-aliasing, we need to call xsltGetNamespace() here.
		    *  Remove this when ready.
		    */
		    copy->ns = FUNC5(ctxt, node, node->ns, copy);
		} else {
		    copy->ns = FUNC6(ctxt,
			node, node->ns->href, node->ns->prefix, copy);

		}
	    } else if ((insert->type == XML_ELEMENT_NODE) &&
		       (insert->ns != NULL))
	    {
		/*
		* "Undeclare" the default namespace.
		*/
		FUNC6(ctxt, node, NULL, NULL, copy);
	    }
	}
    } else {
	FUNC7(ctxt, NULL, node,
		"xsltShallowCopyElem: copy %s failed\n", node->name);
    }
    return(copy);
}