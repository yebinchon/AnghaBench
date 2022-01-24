#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
typedef  int /*<<< orphan*/ * xsltCompMatchPtr ;
typedef  scalar_t__ xmlXPathParserContextPtr ;
typedef  TYPE_2__* xmlNodePtr ;
struct TYPE_17__ {scalar_t__ type; } ;
struct TYPE_16__ {TYPE_14__* xpathCtxt; } ;
struct TYPE_15__ {TYPE_2__* node; } ;

/* Variables and functions */
 scalar_t__ XML_DOCUMENT_NODE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_14__*) ; 
 TYPE_2__* FUNC2 (scalar_t__,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(xsltTransformContextPtr context,
				 xmlNodePtr node,
				 xsltCompMatchPtr countPat,
				 xsltCompMatchPtr fromPat,
				 double *array,
				 int max)
{
    int amount = 0;
    int cnt;
    xmlNodePtr ancestor;
    xmlNodePtr preceding;
    xmlXPathParserContextPtr parser;

    context->xpathCtxt->node = node;
    parser = FUNC1(NULL, context->xpathCtxt);
    if (parser) {
	/* ancestor-or-self::*[count] */
	for (ancestor = node;
	     (ancestor != NULL) && (ancestor->type != XML_DOCUMENT_NODE);
	     ancestor = FUNC2(parser, ancestor)) {

	    if ((fromPat != NULL) &&
		FUNC5(context, ancestor, fromPat))
		break; /* for */

	    if (FUNC4(context, ancestor, countPat, node)) {
		/* count(preceding-sibling::*) */
		cnt = 1;
		for (preceding =
                        FUNC3(parser, ancestor);
		     preceding != NULL;
		     preceding =
		        FUNC3(parser, preceding)) {

	            if (FUNC4(context, preceding, countPat,
                                               node))
			cnt++;
		}
		array[amount++] = (double)cnt;
		if (amount >= max)
		    break; /* for */
	    }
	}
	FUNC0(parser);
    }
    return amount;
}