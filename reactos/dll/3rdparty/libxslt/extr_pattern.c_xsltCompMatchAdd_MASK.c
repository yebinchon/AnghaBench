#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStepOpPtr ;
typedef  int /*<<< orphan*/  xsltStepOp ;
typedef  TYPE_2__* xsltParserContextPtr ;
typedef  scalar_t__ xsltOp ;
typedef  TYPE_3__* xsltCompMatchPtr ;
typedef  TYPE_4__* xmlXPathContextPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_17__ {int /*<<< orphan*/  errors; int /*<<< orphan*/  dict; int /*<<< orphan*/ * doc; } ;
struct TYPE_16__ {int /*<<< orphan*/  dict; int /*<<< orphan*/  flags; } ;
struct TYPE_15__ {int nbStep; int maxStep; TYPE_1__* steps; } ;
struct TYPE_14__ {TYPE_5__* style; int /*<<< orphan*/  elem; int /*<<< orphan*/ * ctxt; } ;
struct TYPE_13__ {int /*<<< orphan*/ * comp; void* lenExtra; void* indexExtra; void* previousExtra; int /*<<< orphan*/ * value3; int /*<<< orphan*/ * value2; int /*<<< orphan*/ * value; scalar_t__ op; } ;

/* Variables and functions */
 int /*<<< orphan*/  XML_XPATH_NOVAR ; 
 scalar_t__ XSLT_OP_PREDICATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (TYPE_5__*) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xsltGenericErrorContext ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC9(xsltParserContextPtr ctxt, xsltCompMatchPtr comp,
                 xsltOp op, xmlChar * value, xmlChar * value2, int novar)
{
    if (comp->nbStep >= comp->maxStep) {
        xsltStepOpPtr tmp;

	tmp = (xsltStepOpPtr) FUNC1(comp->steps, comp->maxStep * 2 *
	                                 sizeof(xsltStepOp));
	if (tmp == NULL) {
	    FUNC7(xsltGenericErrorContext,
	     "xsltCompMatchAdd: memory re-allocation failure.\n");
	    if (ctxt->style != NULL)
		ctxt->style->errors++;
	    if (value)
	        FUNC0(value);
	    if (value2)
	        FUNC0(value2);
	    return (-1);
	}
        comp->maxStep *= 2;
	comp->steps = tmp;
    }
    comp->steps[comp->nbStep].op = op;
    comp->steps[comp->nbStep].value = value;
    comp->steps[comp->nbStep].value2 = value2;
    comp->steps[comp->nbStep].value3 = NULL;
    comp->steps[comp->nbStep].comp = NULL;
    if (ctxt->ctxt != NULL) {
	comp->steps[comp->nbStep].previousExtra =
	    FUNC6(ctxt->ctxt);
	comp->steps[comp->nbStep].indexExtra =
	    FUNC6(ctxt->ctxt);
	comp->steps[comp->nbStep].lenExtra =
	    FUNC6(ctxt->ctxt);
    } else {
	comp->steps[comp->nbStep].previousExtra =
	    FUNC5(ctxt->style);
	comp->steps[comp->nbStep].indexExtra =
	    FUNC5(ctxt->style);
	comp->steps[comp->nbStep].lenExtra =
	    FUNC5(ctxt->style);
    }
    if (op == XSLT_OP_PREDICATE) {
	xmlXPathContextPtr xctxt;

	if (ctxt->style != NULL)
	    xctxt = FUNC4(ctxt->style->doc);
	else
	    xctxt = FUNC4(NULL);
#ifdef XML_XPATH_NOVAR
	if (novar != 0)
	    xctxt->flags = XML_XPATH_NOVAR;
#endif
	if (ctxt->style != NULL)
	    xctxt->dict = ctxt->style->dict;
	comp->steps[comp->nbStep].comp = FUNC2(xctxt, value);
	FUNC3(xctxt);
	if (comp->steps[comp->nbStep].comp == NULL) {
	    FUNC8(NULL, ctxt->style, ctxt->elem,
		    "Failed to compile predicate\n");
	    if (ctxt->style != NULL)
		ctxt->style->errors++;
	}
    }
    comp->nbStep++;
    return (0);
}