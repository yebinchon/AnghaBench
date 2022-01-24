#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_54__   TYPE_4__ ;
typedef  struct TYPE_53__   TYPE_3__ ;
typedef  struct TYPE_52__   TYPE_2__ ;
typedef  struct TYPE_51__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xsltTransformContextPtr ;
typedef  TYPE_3__* xmlNsPtr ;
typedef  TYPE_4__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlAttrPtr ;
struct TYPE_54__ {int type; int /*<<< orphan*/  name; int /*<<< orphan*/ * children; int /*<<< orphan*/ * properties; TYPE_3__* ns; int /*<<< orphan*/ * nsDef; int /*<<< orphan*/  doc; TYPE_1__* parent; int /*<<< orphan*/ * next; struct TYPE_54__* last; int /*<<< orphan*/  content; } ;
struct TYPE_53__ {int /*<<< orphan*/ * prefix; int /*<<< orphan*/ * href; } ;
struct TYPE_52__ {int /*<<< orphan*/  output; } ;
struct TYPE_51__ {int const type; } ;

/* Variables and functions */
#define  XML_ATTRIBUTE_DECL 148 
#define  XML_ATTRIBUTE_NODE 147 
#define  XML_CDATA_SECTION_NODE 146 
#define  XML_COMMENT_NODE 145 
#define  XML_DOCB_DOCUMENT_NODE 144 
#define  XML_DOCUMENT_FRAG_NODE 143 
#define  XML_DOCUMENT_NODE 142 
#define  XML_DOCUMENT_TYPE_NODE 141 
#define  XML_DTD_NODE 140 
#define  XML_ELEMENT_DECL 139 
#define  XML_ELEMENT_NODE 138 
#define  XML_ENTITY_DECL 137 
#define  XML_ENTITY_NODE 136 
#define  XML_ENTITY_REF_NODE 135 
#define  XML_HTML_DOCUMENT_NODE 134 
#define  XML_NAMESPACE_DECL 133 
#define  XML_NOTATION_NODE 132 
#define  XML_PI_NODE 131 
#define  XML_TEXT_NODE 130 
#define  XML_XINCLUDE_END 129 
#define  XML_XINCLUDE_START 128 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 TYPE_4__* FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 TYPE_3__** FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_3__* FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xmlStringTextNoenc ; 
 TYPE_4__* FUNC8 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC12 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC13 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ *,TYPE_4__*,int,int) ; 
 TYPE_3__* FUNC14 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,TYPE_4__*,TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_4__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static xmlNodePtr
FUNC18(xsltTransformContextPtr ctxt, xmlNodePtr invocNode,
	     xmlNodePtr node, xmlNodePtr insert, int isLRE,
	     int topElemVisited)
{
    xmlNodePtr copy;

    if (node == NULL)
	return(NULL);
    switch (node->type) {
        case XML_ELEMENT_NODE:
        case XML_ENTITY_REF_NODE:
        case XML_ENTITY_NODE:
        case XML_PI_NODE:
        case XML_COMMENT_NODE:
        case XML_DOCUMENT_NODE:
        case XML_HTML_DOCUMENT_NODE:
#ifdef LIBXML_DOCB_ENABLED
        case XML_DOCB_DOCUMENT_NODE:
#endif
	    break;
        case XML_TEXT_NODE: {
	    int noenc = (node->name == xmlStringTextNoenc);
	    return(FUNC12(ctxt, insert, node->content, noenc));
	    }
        case XML_CDATA_SECTION_NODE:
	    return(FUNC12(ctxt, insert, node->content, 0));
        case XML_ATTRIBUTE_NODE:
	    return((xmlNodePtr)
		FUNC15(ctxt, invocNode, insert, (xmlAttrPtr) node));
        case XML_NAMESPACE_DECL:
	    return((xmlNodePtr) FUNC16(ctxt, invocNode,
		insert, (xmlNsPtr) node));

        case XML_DOCUMENT_TYPE_NODE:
        case XML_DOCUMENT_FRAG_NODE:
        case XML_NOTATION_NODE:
        case XML_DTD_NODE:
        case XML_ELEMENT_DECL:
        case XML_ATTRIBUTE_DECL:
        case XML_ENTITY_DECL:
        case XML_XINCLUDE_START:
        case XML_XINCLUDE_END:
            return(NULL);
    }
    if (FUNC0(node)) {
	if (node->children != NULL)
	    copy = FUNC13(ctxt, invocNode,
		node->children, insert, 0, 0);
	else
	    copy = NULL;
	return(copy);
    }
    copy = FUNC1(node, insert->doc, 0);
    if (copy != NULL) {
	copy->doc = ctxt->output;
	copy = FUNC8(insert, copy);
        if (copy == NULL) {
            FUNC17(ctxt, NULL, invocNode,
            "xsltCopyTree: Copying of '%s' failed.\n", node->name);
            return (copy);
        }
	/*
	 * The node may have been coalesced into another text node.
	 */
	if (insert->last != copy)
	    return(insert->last);
	copy->next = NULL;

	if (node->type == XML_ELEMENT_NODE) {
	    /*
	    * Copy in-scope namespace nodes.
	    *
	    * REVISIT: Since we try to reuse existing in-scope ns-decls by
	    *  using xmlSearchNsByHref(), this will eventually change
	    *  the prefix of an original ns-binding; thus it might
	    *  break QNames in element/attribute content.
	    * OPTIMIZE TODO: If we had a xmlNsPtr * on the transformation
	    *  context, plus a ns-lookup function, which writes directly
	    *  to a given list, then we wouldn't need to create/free the
	    *  nsList every time.
	    */
	    if ((topElemVisited == 0) &&
		(node->parent != NULL) &&
		(node->parent->type != XML_DOCUMENT_NODE) &&
		(node->parent->type != XML_HTML_DOCUMENT_NODE))
	    {
		xmlNsPtr *nsList, *curns, ns;

		/*
		* If this is a top-most element in a tree to be
		* copied, then we need to ensure that all in-scope
		* namespaces are copied over. For nodes deeper in the
		* tree, it is sufficient to reconcile only the ns-decls
		* (node->nsDef entries).
		*/

		nsList = FUNC3(node->doc, node);
		if (nsList != NULL) {
		    curns = nsList;
		    do {
			/*
			* Search by prefix first in order to break as less
			* QNames in element/attribute content as possible.
			*/
			ns = FUNC5(insert->doc, insert,
			    (*curns)->prefix);

			if ((ns == NULL) ||
			    (! FUNC7(ns->href, (*curns)->href)))
			{
			    ns = NULL;
			    /*
			    * Search by namespace name.
			    * REVISIT TODO: Currently disabled.
			    */
#if 0
			    ns = xmlSearchNsByHref(insert->doc,
				insert, (*curns)->href);
#endif
			}
			if (ns == NULL) {
			    /*
			    * Declare a new namespace on the copied element.
			    */
			    ns = FUNC4(copy, (*curns)->href,
				(*curns)->prefix);
			    /* TODO: Handle errors */
			}
			if (node->ns == *curns) {
			    /*
			    * If this was the original's namespace then set
			    * the generated counterpart on the copy.
			    */
			    copy->ns = ns;
			}
			curns++;
		    } while (*curns != NULL);
		    FUNC2(nsList);
		}
	    } else if (node->nsDef != NULL) {
		/*
		* Copy over all namespace declaration attributes.
		*/
		if (node->nsDef != NULL) {
		    if (isLRE)
			FUNC10(ctxt, copy, node->nsDef);
		    else
			FUNC11(copy, node->nsDef);
		}
	    }
	    /*
	    * Set the namespace.
	    */
	    if (node->ns != NULL) {
		if (copy->ns == NULL) {
		    /*
		    * This will map copy->ns to one of the newly created
		    * in-scope ns-decls, OR create a new ns-decl on @copy.
		    */
		    copy->ns = FUNC14(ctxt, invocNode,
			node->ns->href, node->ns->prefix, copy);
		}
	    } else if ((insert->type == XML_ELEMENT_NODE) &&
		(insert->ns != NULL))
	    {
		/*
		* "Undeclare" the default namespace on @copy with xmlns="".
		*/
		FUNC14(ctxt, invocNode, NULL, NULL, copy);
	    }
	    /*
	    * Copy attribute nodes.
	    */
	    if (node->properties != NULL) {
		FUNC9(ctxt, invocNode,
		    copy, node->properties);
	    }
	    if (topElemVisited == 0)
		topElemVisited = 1;
	}
	/*
	* Copy the subtree.
	*/
	if (node->children != NULL) {
	    FUNC13(ctxt, invocNode,
		node->children, copy, isLRE, topElemVisited);
	}
    } else {
	FUNC17(ctxt, NULL, invocNode,
	    "xsltCopyTree: Copying of '%s' failed.\n", node->name);
    }
    return(copy);
}