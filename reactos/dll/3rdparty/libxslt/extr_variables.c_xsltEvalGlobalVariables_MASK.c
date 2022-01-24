#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* xsltTransformContextPtr ;
typedef  TYPE_4__* xsltStylesheetPtr ;
typedef  TYPE_5__* xsltStackElemPtr ;
struct TYPE_22__ {scalar_t__ doc; } ;
struct TYPE_21__ {struct TYPE_21__* next; int /*<<< orphan*/  name; TYPE_2__* comp; int /*<<< orphan*/  nameURI; } ;
struct TYPE_20__ {int /*<<< orphan*/  errors; TYPE_1__* doc; TYPE_5__* variables; } ;
struct TYPE_19__ {int /*<<< orphan*/  globalVars; TYPE_4__* style; int /*<<< orphan*/ * document; } ;
struct TYPE_18__ {scalar_t__ type; TYPE_8__* inst; } ;
struct TYPE_17__ {int /*<<< orphan*/ * URL; } ;

/* Variables and functions */
 scalar_t__ XSLT_FUNC_VARIABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XSLT_TRACE_VARIABLES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_5__* FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  xsltEvalGlobalVariableWrapper ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 TYPE_4__* FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_4__*,TYPE_8__*,char*,int /*<<< orphan*/ ) ; 

int
FUNC8(xsltTransformContextPtr ctxt) {
    xsltStackElemPtr elem;
    xsltStylesheetPtr style;

    if ((ctxt == NULL) || (ctxt->document == NULL))
	return(-1);

#ifdef WITH_XSLT_DEBUG_VARIABLE
    XSLT_TRACE(ctxt,XSLT_TRACE_VARIABLES,xsltGenericDebug(xsltGenericDebugContext,
	"Registering global variables\n"));
#endif
    /*
     * Walk the list from the stylesheets and populate the hash table
     */
    style = ctxt->style;
    while (style != NULL) {
	elem = style->variables;

#ifdef WITH_XSLT_DEBUG_VARIABLE
	if ((style->doc != NULL) && (style->doc->URL != NULL)) {
	    XSLT_TRACE(ctxt,XSLT_TRACE_VARIABLES,xsltGenericDebug(xsltGenericDebugContext,
			     "Registering global variables from %s\n",
		             style->doc->URL));
	}
#endif

	while (elem != NULL) {
	    xsltStackElemPtr def;

	    /*
	     * Global variables are stored in the variables pool.
	     */
	    def = (xsltStackElemPtr)
		    FUNC2(ctxt->globalVars,
		                 elem->name, elem->nameURI);
	    if (def == NULL) {

		def = FUNC4(elem);
		FUNC1(ctxt->globalVars,
				 elem->name, elem->nameURI, def);
	    } else if ((elem->comp != NULL) &&
		       (elem->comp->type == XSLT_FUNC_VARIABLE)) {
		/*
		 * Redefinition of variables from a different stylesheet
		 * should not generate a message.
		 */
		if ((elem->comp->inst != NULL) &&
		    (def->comp != NULL) && (def->comp->inst != NULL) &&
		    (elem->comp->inst->doc == def->comp->inst->doc))
		{
		    FUNC7(ctxt, style, elem->comp->inst,
			"Global variable %s already defined\n", elem->name);
		    if (style != NULL) style->errors++;
		}
	    }
	    elem = elem->next;
	}

	style = FUNC6(style);
    }

    /*
     * This part does the actual evaluation
     */
    FUNC3(ctxt->globalVars, xsltEvalGlobalVariableWrapper, ctxt);

    return(0);
}