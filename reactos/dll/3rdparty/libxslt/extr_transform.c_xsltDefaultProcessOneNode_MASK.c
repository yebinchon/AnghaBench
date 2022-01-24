#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* xsltTransformContextPtr ;
typedef  TYPE_4__* xsltTemplatePtr ;
typedef  int /*<<< orphan*/  xsltStackElemPtr ;
typedef  TYPE_5__* xmlNodePtr ;
struct TYPE_28__ {int type; struct TYPE_28__* next; int /*<<< orphan*/  name; int /*<<< orphan*/ * content; struct TYPE_28__* children; TYPE_1__* prev; } ;
struct TYPE_27__ {int /*<<< orphan*/  content; } ;
struct TYPE_26__ {TYPE_2__* xpathCtxt; int /*<<< orphan*/  insert; } ;
struct TYPE_25__ {int contextSize; int proximityPosition; } ;
struct TYPE_24__ {TYPE_5__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_STOPPED ; 
#define  XML_ATTRIBUTE_NODE 136 
#define  XML_CDATA_SECTION_NODE 135 
#define  XML_COMMENT_NODE 134 
#define  XML_DOCUMENT_NODE 133 
#define  XML_DTD_NODE 132 
#define  XML_ELEMENT_NODE 131 
#define  XML_HTML_DOCUMENT_NODE 130 
#define  XML_PI_NODE 129 
#define  XML_TEXT_NODE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XSLT_TRACE_PROCESS_NODE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 TYPE_4__* FUNC6 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_5__*,char*) ; 

__attribute__((used)) static void
FUNC9(xsltTransformContextPtr ctxt, xmlNodePtr node,
			  xsltStackElemPtr params) {
    xmlNodePtr copy;
    xmlNodePtr delete = NULL, cur;
    int nbchild = 0, oldSize;
    int childno = 0, oldPos;
    xsltTemplatePtr template;

    CHECK_STOPPED;
    /*
     * Handling of leaves
     */
    switch (node->type) {
	case XML_DOCUMENT_NODE:
	case XML_HTML_DOCUMENT_NODE:
	case XML_ELEMENT_NODE:
	    break;
	case XML_CDATA_SECTION_NODE:
#ifdef WITH_XSLT_DEBUG_PROCESS
	    XSLT_TRACE(ctxt,XSLT_TRACE_PROCESS_NODE,xsltGenericDebug(xsltGenericDebugContext,
	     "xsltDefaultProcessOneNode: copy CDATA %s\n",
		node->content));
#endif
	    copy = FUNC4(ctxt, ctxt->insert, node, 0);
	    if (copy == NULL) {
		FUNC8(ctxt, NULL, node,
		 "xsltDefaultProcessOneNode: cdata copy failed\n");
	    }
	    return;
	case XML_TEXT_NODE:
#ifdef WITH_XSLT_DEBUG_PROCESS
	    if (node->content == NULL) {
		XSLT_TRACE(ctxt,XSLT_TRACE_PROCESS_NODE,xsltGenericDebug(xsltGenericDebugContext,
		 "xsltDefaultProcessOneNode: copy empty text\n"));
		return;
	    } else {
		XSLT_TRACE(ctxt,XSLT_TRACE_PROCESS_NODE,xsltGenericDebug(xsltGenericDebugContext,
		 "xsltDefaultProcessOneNode: copy text %s\n",
			node->content));
            }
#endif
	    copy = FUNC4(ctxt, ctxt->insert, node, 0);
	    if (copy == NULL) {
		FUNC8(ctxt, NULL, node,
		 "xsltDefaultProcessOneNode: text copy failed\n");
	    }
	    return;
	case XML_ATTRIBUTE_NODE:
	    cur = node->children;
	    while ((cur != NULL) && (cur->type != XML_TEXT_NODE))
		cur = cur->next;
	    if (cur == NULL) {
		FUNC8(ctxt, NULL, node,
		 "xsltDefaultProcessOneNode: no text for attribute\n");
	    } else {
#ifdef WITH_XSLT_DEBUG_PROCESS
		if (cur->content == NULL) {
		    XSLT_TRACE(ctxt,XSLT_TRACE_PROCESS_NODE,xsltGenericDebug(xsltGenericDebugContext,
		     "xsltDefaultProcessOneNode: copy empty text\n"));
		} else {
		    XSLT_TRACE(ctxt,XSLT_TRACE_PROCESS_NODE,xsltGenericDebug(xsltGenericDebugContext,
		     "xsltDefaultProcessOneNode: copy text %s\n",
			cur->content));
                }
#endif
		copy = FUNC4(ctxt, ctxt->insert, cur, 0);
		if (copy == NULL) {
		    FUNC8(ctxt, NULL, node,
		     "xsltDefaultProcessOneNode: text copy failed\n");
		}
	    }
	    return;
	default:
	    return;
    }
    /*
     * Handling of Elements: first pass, cleanup and counting
     */
    cur = node->children;
    while (cur != NULL) {
	switch (cur->type) {
	    case XML_TEXT_NODE:
	    case XML_CDATA_SECTION_NODE:
	    case XML_DOCUMENT_NODE:
	    case XML_HTML_DOCUMENT_NODE:
	    case XML_ELEMENT_NODE:
	    case XML_PI_NODE:
	    case XML_COMMENT_NODE:
		nbchild++;
		break;
            case XML_DTD_NODE:
		/* Unlink the DTD, it's still reachable using doc->intSubset */
		if (cur->next != NULL)
		    cur->next->prev = cur->prev;
		if (cur->prev != NULL)
		    cur->prev->next = cur->next;
		break;
	    default:
#ifdef WITH_XSLT_DEBUG_PROCESS
		XSLT_TRACE(ctxt,XSLT_TRACE_PROCESS_NODE,xsltGenericDebug(xsltGenericDebugContext,
		 "xsltDefaultProcessOneNode: skipping node type %d\n",
		                 cur->type));
#endif
		delete = cur;
	}
	cur = cur->next;
	if (delete != NULL) {
#ifdef WITH_XSLT_DEBUG_PROCESS
	    XSLT_TRACE(ctxt,XSLT_TRACE_PROCESS_NODE,xsltGenericDebug(xsltGenericDebugContext,
		 "xsltDefaultProcessOneNode: removing ignorable blank node\n"));
#endif
	    FUNC2(delete);
	    FUNC1(delete);
	    delete = NULL;
	}
    }
    if (delete != NULL) {
#ifdef WITH_XSLT_DEBUG_PROCESS
	XSLT_TRACE(ctxt,XSLT_TRACE_PROCESS_NODE,xsltGenericDebug(xsltGenericDebugContext,
	     "xsltDefaultProcessOneNode: removing ignorable blank node\n"));
#endif
	FUNC2(delete);
	FUNC1(delete);
	delete = NULL;
    }

    /*
     * Handling of Elements: second pass, actual processing
     *
     * Note that params are passed to the next template. This matches
     * XSLT 2.0 behavior but doesn't conform to XSLT 1.0.
     */
    oldSize = ctxt->xpathCtxt->contextSize;
    oldPos = ctxt->xpathCtxt->proximityPosition;
    cur = node->children;
    while (cur != NULL) {
	childno++;
	switch (cur->type) {
	    case XML_DOCUMENT_NODE:
	    case XML_HTML_DOCUMENT_NODE:
	    case XML_ELEMENT_NODE:
		ctxt->xpathCtxt->contextSize = nbchild;
		ctxt->xpathCtxt->proximityPosition = childno;
		FUNC7(ctxt, cur, params);
		break;
	    case XML_CDATA_SECTION_NODE:
		template = FUNC6(ctxt, cur, NULL);
		if (template) {
#ifdef WITH_XSLT_DEBUG_PROCESS
		    XSLT_TRACE(ctxt,XSLT_TRACE_PROCESS_NODE,xsltGenericDebug(xsltGenericDebugContext,
		 "xsltDefaultProcessOneNode: applying template for CDATA %s\n",
				     cur->content));
#endif
		    /*
		    * Instantiate the xsl:template.
		    */
		    FUNC3(ctxt, cur, template->content,
			template, params);
		} else /* if (ctxt->mode == NULL) */ {
#ifdef WITH_XSLT_DEBUG_PROCESS
		    XSLT_TRACE(ctxt,XSLT_TRACE_PROCESS_NODE,xsltGenericDebug(xsltGenericDebugContext,
		     "xsltDefaultProcessOneNode: copy CDATA %s\n",
				     cur->content));
#endif
		    copy = FUNC4(ctxt, ctxt->insert, cur, 0);
		    if (copy == NULL) {
			FUNC8(ctxt, NULL, cur,
			    "xsltDefaultProcessOneNode: cdata copy failed\n");
		    }
		}
		break;
	    case XML_TEXT_NODE:
		template = FUNC6(ctxt, cur, NULL);
		if (template) {
#ifdef WITH_XSLT_DEBUG_PROCESS
		    XSLT_TRACE(ctxt,XSLT_TRACE_PROCESS_NODE,xsltGenericDebug(xsltGenericDebugContext,
	     "xsltDefaultProcessOneNode: applying template for text %s\n",
				     cur->content));
#endif
		    ctxt->xpathCtxt->contextSize = nbchild;
		    ctxt->xpathCtxt->proximityPosition = childno;
		    /*
		    * Instantiate the xsl:template.
		    */
		    FUNC3(ctxt, cur, template->content,
			template, params);
		} else /* if (ctxt->mode == NULL) */ {
#ifdef WITH_XSLT_DEBUG_PROCESS
		    if (cur->content == NULL) {
			XSLT_TRACE(ctxt,XSLT_TRACE_PROCESS_NODE,xsltGenericDebug(xsltGenericDebugContext,
			 "xsltDefaultProcessOneNode: copy empty text\n"));
		    } else {
			XSLT_TRACE(ctxt,XSLT_TRACE_PROCESS_NODE,xsltGenericDebug(xsltGenericDebugContext,
		     "xsltDefaultProcessOneNode: copy text %s\n",
					 cur->content));
                    }
#endif
		    copy = FUNC4(ctxt, ctxt->insert, cur, 0);
		    if (copy == NULL) {
			FUNC8(ctxt, NULL, cur,
			    "xsltDefaultProcessOneNode: text copy failed\n");
		    }
		}
		break;
	    case XML_PI_NODE:
	    case XML_COMMENT_NODE:
		template = FUNC6(ctxt, cur, NULL);
		if (template) {
#ifdef WITH_XSLT_DEBUG_PROCESS
		    if (cur->type == XML_PI_NODE) {
			XSLT_TRACE(ctxt,XSLT_TRACE_PROCESS_NODE,xsltGenericDebug(xsltGenericDebugContext,
		     "xsltDefaultProcessOneNode: template found for PI %s\n",
			                 cur->name));
		    } else if (cur->type == XML_COMMENT_NODE) {
			XSLT_TRACE(ctxt,XSLT_TRACE_PROCESS_NODE,xsltGenericDebug(xsltGenericDebugContext,
		     "xsltDefaultProcessOneNode: template found for comment\n"));
                    }
#endif
		    ctxt->xpathCtxt->contextSize = nbchild;
		    ctxt->xpathCtxt->proximityPosition = childno;
		    /*
		    * Instantiate the xsl:template.
		    */
		    FUNC3(ctxt, cur, template->content,
			template, params);
		}
		break;
	    default:
		break;
	}
	cur = cur->next;
    }
    ctxt->xpathCtxt->contextSize = oldSize;
    ctxt->xpathCtxt->proximityPosition = oldPos;
}