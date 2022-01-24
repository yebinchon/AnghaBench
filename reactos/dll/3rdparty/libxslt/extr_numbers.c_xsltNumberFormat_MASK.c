#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xsltTransformContextPtr ;
typedef  TYPE_3__* xsltNumberDataPtr ;
struct TYPE_17__ {int nTokens; TYPE_1__* tokens; int /*<<< orphan*/ * end; int /*<<< orphan*/ * start; } ;
typedef  TYPE_4__ xsltFormat ;
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  int /*<<< orphan*/ * xmlBufferPtr ;
typedef  int /*<<< orphan*/  numarray ;
struct TYPE_16__ {scalar_t__ has_format; int /*<<< orphan*/  fromPat; int /*<<< orphan*/  countPat; scalar_t__ level; scalar_t__ value; int /*<<< orphan*/  node; int /*<<< orphan*/ * format; } ;
struct TYPE_15__ {int /*<<< orphan*/  insert; int /*<<< orphan*/  xpathCtxt; } ;
struct TYPE_14__ {int /*<<< orphan*/ * separator; } ;

/* Variables and functions */
 int /*<<< orphan*/  XSLT_NAMESPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,double*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,double*,int,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_4__*) ; 

void
FUNC12(xsltTransformContextPtr ctxt,
		 xsltNumberDataPtr data,
		 xmlNodePtr node)
{
    xmlBufferPtr output = NULL;
    int amount, i;
    double number;
    xsltFormat tokens;

    if (data->format != NULL) {
        FUNC11(data->format, &tokens);
    }
    else {
        xmlChar *format;

	/* The format needs to be recomputed each time */
        if (data->has_format == 0)
            return;
	format = FUNC6(ctxt, data->node,
					     (const xmlChar *) "format",
					     XSLT_NAMESPACE);
        if (format == NULL)
            return;
        FUNC11(format, &tokens);
	FUNC3(format);
    }

    output = FUNC1();
    if (output == NULL)
	goto XSLT_NUMBER_FORMAT_END;

    /*
     * Evaluate the XPath expression to find the value(s)
     */
    if (data->value) {
	amount = FUNC9(ctxt->xpathCtxt,
					  node,
					  data->value,
					  &number);
	if (amount == 1) {
	    FUNC10(data,
					  &number,
					  1,
					  &tokens,
					  output);
	}

    } else if (data->level) {

	if (FUNC4(data->level, (const xmlChar *) "single")) {
	    amount = FUNC8(ctxt,
						      node,
						      data->countPat,
						      data->fromPat,
						      &number,
						      1);
	    if (amount == 1) {
		FUNC10(data,
					      &number,
					      1,
					      &tokens,
					      output);
	    }
	} else if (FUNC4(data->level, (const xmlChar *) "multiple")) {
	    double numarray[1024];
	    int max = sizeof(numarray)/sizeof(numarray[0]);
	    amount = FUNC8(ctxt,
						      node,
						      data->countPat,
						      data->fromPat,
						      numarray,
						      max);
	    if (amount > 0) {
		FUNC10(data,
					      numarray,
					      amount,
					      &tokens,
					      output);
	    }
	} else if (FUNC4(data->level, (const xmlChar *) "any")) {
	    amount = FUNC7(ctxt,
						 node,
						 data->countPat,
						 data->fromPat,
						 &number);
	    if (amount > 0) {
		FUNC10(data,
					      &number,
					      1,
					      &tokens,
					      output);
	    }
	}
    }
    /* Insert number as text node */
    FUNC5(ctxt, ctxt->insert, FUNC0(output), 0);

    FUNC2(output);

XSLT_NUMBER_FORMAT_END:
    if (tokens.start != NULL)
	FUNC3(tokens.start);
    if (tokens.end != NULL)
	FUNC3(tokens.end);
    for (i = 0;i < tokens.nTokens;i++) {
	if (tokens.tokens[i].separator != NULL)
	    FUNC3(tokens.tokens[i].separator);
    }
}