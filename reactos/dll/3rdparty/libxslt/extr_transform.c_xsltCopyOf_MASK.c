#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
typedef  TYPE_2__* xsltStylePreCompPtr ;
typedef  int /*<<< orphan*/  xsltStyleItemCopyOfPtr ;
typedef  int /*<<< orphan*/  xsltElemPreCompPtr ;
typedef  TYPE_3__* xmlXPathObjectPtr ;
typedef  TYPE_4__* xmlNodeSetPtr ;
typedef  TYPE_5__* xmlNodePtr ;
typedef  scalar_t__ xmlChar ;
typedef  int /*<<< orphan*/  xmlAttrPtr ;
struct TYPE_31__ {scalar_t__ type; int /*<<< orphan*/  children; } ;
struct TYPE_30__ {int nodeNr; TYPE_5__** nodeTab; } ;
struct TYPE_29__ {scalar_t__ type; int /*<<< orphan*/ * stringval; TYPE_4__* nodesetval; } ;
struct TYPE_28__ {int /*<<< orphan*/ * select; int /*<<< orphan*/ * comp; } ;
struct TYPE_27__ {void* state; int /*<<< orphan*/  insert; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 scalar_t__ XML_ATTRIBUTE_NODE ; 
 scalar_t__ XML_DOCUMENT_NODE ; 
 scalar_t__ XML_HTML_DOCUMENT_NODE ; 
 scalar_t__ XPATH_NODESET ; 
 scalar_t__ XPATH_XSLT_TREE ; 
 void* XSLT_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XSLT_TRACE_COPY_OF ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 TYPE_3__* FUNC9 (TYPE_1__*,TYPE_5__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_5__*,char*) ; 

void
FUNC12(xsltTransformContextPtr ctxt, xmlNodePtr node,
	           xmlNodePtr inst, xsltElemPreCompPtr castedComp) {
#ifdef XSLT_REFACTORED
    xsltStyleItemCopyOfPtr comp = (xsltStyleItemCopyOfPtr) castedComp;
#else
    xsltStylePreCompPtr comp = (xsltStylePreCompPtr) castedComp;
#endif
    xmlXPathObjectPtr res = NULL;
    xmlNodeSetPtr list = NULL;
    int i;

    if ((ctxt == NULL) || (node == NULL) || (inst == NULL))
	return;
    if ((comp == NULL) || (comp->select == NULL) || (comp->comp == NULL)) {
	FUNC11(ctxt, NULL, inst,
	     "xsl:copy-of : compilation failed\n");
	return;
    }

     /*
    * SPEC XSLT 1.0:
    *  "The xsl:copy-of element can be used to insert a result tree
    *  fragment into the result tree, without first converting it to
    *  a string as xsl:value-of does (see [7.6.1 Generating Text with
    *  xsl:value-of]). The required select attribute contains an
    *  expression. When the result of evaluating the expression is a
    *  result tree fragment, the complete fragment is copied into the
    *  result tree. When the result is a node-set, all the nodes in the
    *  set are copied in document order into the result tree; copying
    *  an element node copies the attribute nodes, namespace nodes and
    *  children of the element node as well as the element node itself;
    *  a root node is copied by copying its children. When the result
    *  is neither a node-set nor a result tree fragment, the result is
    *  converted to a string and then inserted into the result tree,
    *  as with xsl:value-of.
    */

#ifdef WITH_XSLT_DEBUG_PROCESS
    XSLT_TRACE(ctxt,XSLT_TRACE_COPY_OF,xsltGenericDebug(xsltGenericDebugContext,
	 "xsltCopyOf: select %s\n", comp->select));
#endif

    /*
    * Evaluate the "select" expression.
    */
    res = FUNC9(ctxt, node, comp);

    if (res != NULL) {
	if (res->type == XPATH_NODESET) {
	    /*
	    * Node-set
	    * --------
	    */
#ifdef WITH_XSLT_DEBUG_PROCESS
	    XSLT_TRACE(ctxt,XSLT_TRACE_COPY_OF,xsltGenericDebug(xsltGenericDebugContext,
		 "xsltCopyOf: result is a node set\n"));
#endif
	    list = res->nodesetval;
	    if (list != NULL) {
		xmlNodePtr cur;
		/*
		* The list is already sorted in document order by XPath.
		* Append everything in this order under ctxt->insert.
		*/
		for (i = 0;i < list->nodeNr;i++) {
		    cur = list->nodeTab[i];
		    if (cur == NULL)
			continue;
		    if ((cur->type == XML_DOCUMENT_NODE) ||
			(cur->type == XML_HTML_DOCUMENT_NODE))
		    {
			FUNC7(ctxt, inst,
			    cur->children, ctxt->insert, 0, 0);
		    } else if (cur->type == XML_ATTRIBUTE_NODE) {
			FUNC10(ctxt, inst,
			    ctxt->insert, (xmlAttrPtr) cur);
		    } else {
			FUNC6(ctxt, inst, cur, ctxt->insert, 0, 0);
		    }
		}
	    }
	} else if (res->type == XPATH_XSLT_TREE) {
	    /*
	    * Result tree fragment
	    * --------------------
	    * E.g. via <xsl:variable ...><foo/></xsl:variable>
	    * Note that the root node of such trees is an xmlDocPtr in Libxslt.
	    */
#ifdef WITH_XSLT_DEBUG_PROCESS
	    XSLT_TRACE(ctxt,XSLT_TRACE_COPY_OF,xsltGenericDebug(xsltGenericDebugContext,
		 "xsltCopyOf: result is a result tree fragment\n"));
#endif
	    list = res->nodesetval;
	    if ((list != NULL) && (list->nodeTab != NULL) &&
		(list->nodeTab[0] != NULL) &&
		(FUNC0(list->nodeTab[0])))
	    {
		FUNC7(ctxt, inst,
		    list->nodeTab[0]->children, ctxt->insert, 0, 0);
	    }
	} else {
	    xmlChar *value = NULL;
	    /*
	    * Convert to a string.
	    */
	    value = FUNC3(res);
	    if (value == NULL) {
		FUNC11(ctxt, NULL, inst,
		    "Internal error in xsltCopyOf(): "
		    "failed to cast an XPath object to string.\n");
		ctxt->state = XSLT_STATE_STOPPED;
	    } else {
		if (value[0] != 0) {
		    /*
		    * Append content as text node.
		    */
		    FUNC5(ctxt, ctxt->insert, value, 0);
		}
		FUNC2(value);

#ifdef WITH_XSLT_DEBUG_PROCESS
		XSLT_TRACE(ctxt,XSLT_TRACE_COPY_OF,xsltGenericDebug(xsltGenericDebugContext,
		    "xsltCopyOf: result %s\n", res->stringval));
#endif
	    }
	}
    } else {
	ctxt->state = XSLT_STATE_STOPPED;
    }

    if (res != NULL)
	FUNC4(res);
}