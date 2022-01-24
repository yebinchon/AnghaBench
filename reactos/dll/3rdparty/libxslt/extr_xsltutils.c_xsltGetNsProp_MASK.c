#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* xmlNsPtr ;
typedef  TYPE_4__* xmlNodePtr ;
typedef  TYPE_5__* xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  TYPE_6__* xmlAttributePtr ;
typedef  TYPE_7__* xmlAttrPtr ;
struct TYPE_21__ {struct TYPE_21__* next; int /*<<< orphan*/  children; TYPE_2__* ns; int /*<<< orphan*/  name; } ;
struct TYPE_20__ {int /*<<< orphan*/ * defaultValue; int /*<<< orphan*/ * prefix; } ;
struct TYPE_19__ {int /*<<< orphan*/ * extSubset; int /*<<< orphan*/ * intSubset; } ;
struct TYPE_18__ {scalar_t__ type; int /*<<< orphan*/  name; TYPE_5__* doc; TYPE_1__* ns; TYPE_7__* properties; } ;
struct TYPE_17__ {int /*<<< orphan*/  href; } ;
struct TYPE_16__ {int /*<<< orphan*/  href; } ;
struct TYPE_15__ {int /*<<< orphan*/  href; } ;

/* Variables and functions */
 scalar_t__ XML_ELEMENT_NODE ; 
 scalar_t__ XML_NAMESPACE_DECL ; 
 TYPE_6__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC3 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

xmlChar *
FUNC6(xmlNodePtr node, const xmlChar *name, const xmlChar *nameSpace) {
    xmlAttrPtr prop;
    xmlDocPtr doc;
    xmlNsPtr ns;

    if (node == NULL)
	return(NULL);

    if (nameSpace == NULL)
        return FUNC1(node, name);

    if (node->type == XML_NAMESPACE_DECL)
        return(NULL);
    if (node->type == XML_ELEMENT_NODE)
	prop = node->properties;
    else
	prop = NULL;
    /*
    * TODO: Substitute xmlGetProp() for xmlGetNsProp(), since the former
    * is not namespace-aware and will return an attribute with equal
    * name regardless of its namespace.
    * Example:
    *   <xsl:element foo:name="myName"/>
    *   So this would return "myName" even if an attribute @name
    *   in the XSLT was requested.
    */
    while (prop != NULL) {
	/*
	 * One need to have
	 *   - same attribute names
	 *   - and the attribute carrying that namespace
	 */
        if ((FUNC4(prop->name, name)) &&
	    (((prop->ns == NULL) && (node->ns != NULL) &&
	      (FUNC4(node->ns->href, nameSpace))) ||
	     ((prop->ns != NULL) &&
	      (FUNC4(prop->ns->href, nameSpace))))) {
	    xmlChar *ret;

	    ret = FUNC2(node->doc, prop->children, 1);
	    if (ret == NULL) return(FUNC5((xmlChar *)""));
	    return(ret);
        }
	prop = prop->next;
    }

    /*
     * Check if there is a default declaration in the internal
     * or external subsets
     */
    doc =  node->doc;
    if (doc != NULL) {
        if (doc->intSubset != NULL) {
	    xmlAttributePtr attrDecl;

	    attrDecl = FUNC0(doc->intSubset, node->name, name);
	    if ((attrDecl == NULL) && (doc->extSubset != NULL))
		attrDecl = FUNC0(doc->extSubset, node->name, name);

	    if ((attrDecl != NULL) && (attrDecl->prefix != NULL)) {
	        /*
		 * The DTD declaration only allows a prefix search
		 */
		ns = FUNC3(doc, node, attrDecl->prefix);
		if ((ns != NULL) && (FUNC4(ns->href, nameSpace)))
		    return(FUNC5(attrDecl->defaultValue));
	    }
	}
    }
    return(NULL);
}