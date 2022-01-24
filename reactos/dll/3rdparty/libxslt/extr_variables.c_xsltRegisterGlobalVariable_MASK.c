#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  TYPE_2__* xsltStylePreCompPtr ;
typedef  TYPE_3__* xsltStackElemPtr ;
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_10__ {scalar_t__ name; scalar_t__ nameURI; int computed; int /*<<< orphan*/  value; struct TYPE_10__* next; TYPE_2__* comp; int /*<<< orphan*/  tree; void* select; } ;
struct TYPE_9__ {scalar_t__ type; int /*<<< orphan*/  inst; } ;
struct TYPE_8__ {int /*<<< orphan*/  errors; TYPE_3__* variables; int /*<<< orphan*/  dict; } ;

/* Variables and functions */
 scalar_t__ XSLT_FUNC_PARAM ; 
 scalar_t__ XSLT_FUNC_VARIABLE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(xsltStylesheetPtr style, const xmlChar *name,
		     const xmlChar *ns_uri, const xmlChar *sel,
		     xmlNodePtr tree, xsltStylePreCompPtr comp,
		     const xmlChar *value) {
    xsltStackElemPtr elem, tmp;
    if (style == NULL)
	return(-1);
    if (name == NULL)
	return(-1);
    if (comp == NULL)
	return(-1);

#ifdef WITH_XSLT_DEBUG_VARIABLE
    if (comp->type == XSLT_FUNC_PARAM)
	xsltGenericDebug(xsltGenericDebugContext,
			 "Defining global param %s\n", name);
    else
	xsltGenericDebug(xsltGenericDebugContext,
			 "Defining global variable %s\n", name);
#endif

    elem = FUNC4(NULL);
    if (elem == NULL)
	return(-1);
    elem->comp = comp;
    elem->name = FUNC0(style->dict, name, -1);
    elem->select = FUNC0(style->dict, sel, -1);
    if (ns_uri)
	elem->nameURI = FUNC0(style->dict, ns_uri, -1);
    elem->tree = tree;
    tmp = style->variables;
    if (tmp == NULL) {
	elem->next = NULL;
	style->variables = elem;
    } else {
	while (tmp != NULL) {
	    if ((elem->comp->type == XSLT_FUNC_VARIABLE) &&
		(tmp->comp->type == XSLT_FUNC_VARIABLE) &&
		(FUNC1(elem->name, tmp->name)) &&
		((elem->nameURI == tmp->nameURI) ||
		 (FUNC1(elem->nameURI, tmp->nameURI))))
	    {
		FUNC5(NULL, style, comp->inst,
		"redefinition of global variable %s\n", elem->name);
		style->errors++;
	    }
	    if (tmp->next == NULL)
	        break;
	    tmp = tmp->next;
	}
	elem->next = NULL;
	tmp->next = elem;
    }
    if (value != NULL) {
	elem->computed = 1;
	elem->value = FUNC2(value);
    }
    return(0);
}