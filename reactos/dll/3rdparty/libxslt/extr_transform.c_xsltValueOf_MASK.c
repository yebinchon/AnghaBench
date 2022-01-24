#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
typedef  TYPE_2__* xsltStylePreCompPtr ;
typedef  int /*<<< orphan*/  xsltStyleItemValueOfPtr ;
typedef  int /*<<< orphan*/  xsltElemPreCompPtr ;
typedef  int /*<<< orphan*/ * xmlXPathObjectPtr ;
typedef  int /*<<< orphan*/ * xmlNodePtr ;
typedef  scalar_t__ xmlChar ;
struct TYPE_10__ {scalar_t__* select; int /*<<< orphan*/  noescape; int /*<<< orphan*/ * comp; } ;
struct TYPE_9__ {void* state; int /*<<< orphan*/  insert; } ;

/* Variables and functions */
 void* XSLT_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XSLT_TRACE_VALUE_OF ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

void
FUNC8(xsltTransformContextPtr ctxt, xmlNodePtr node,
	           xmlNodePtr inst, xsltElemPreCompPtr castedComp)
{
#ifdef XSLT_REFACTORED
    xsltStyleItemValueOfPtr comp = (xsltStyleItemValueOfPtr) castedComp;
#else
    xsltStylePreCompPtr comp = (xsltStylePreCompPtr) castedComp;
#endif
    xmlXPathObjectPtr res = NULL;
    xmlChar *value = NULL;

    if ((ctxt == NULL) || (node == NULL) || (inst == NULL))
	return;

    if ((comp == NULL) || (comp->select == NULL) || (comp->comp == NULL)) {
	FUNC7(ctxt, NULL, inst,
	    "Internal error in xsltValueOf(): "
	    "The XSLT 'value-of' instruction was not compiled.\n");
	return;
    }

#ifdef WITH_XSLT_DEBUG_PROCESS
    XSLT_TRACE(ctxt,XSLT_TRACE_VALUE_OF,xsltGenericDebug(xsltGenericDebugContext,
	 "xsltValueOf: select %s\n", comp->select));
#endif

    res = FUNC6(ctxt, node, comp);

    /*
    * Cast the XPath object to string.
    */
    if (res != NULL) {
	value = FUNC2(res);
	if (value == NULL) {
	    FUNC7(ctxt, NULL, inst,
		"Internal error in xsltValueOf(): "
		"failed to cast an XPath object to string.\n");
	    ctxt->state = XSLT_STATE_STOPPED;
	    goto error;
	}
	if (value[0] != 0) {
	    FUNC4(ctxt, ctxt->insert, value, comp->noescape);
	}
    } else {
	FUNC7(ctxt, NULL, inst,
	    "XPath evaluation returned no result.\n");
	ctxt->state = XSLT_STATE_STOPPED;
	goto error;
    }

#ifdef WITH_XSLT_DEBUG_PROCESS
    if (value) {
	XSLT_TRACE(ctxt,XSLT_TRACE_VALUE_OF,xsltGenericDebug(xsltGenericDebugContext,
	     "xsltValueOf: result '%s'\n", value));
    }
#endif

error:
    if (value != NULL)
	FUNC1(value);
    if (res != NULL)
	FUNC3(res);
}