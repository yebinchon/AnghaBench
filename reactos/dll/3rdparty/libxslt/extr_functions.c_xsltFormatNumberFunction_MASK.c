#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
typedef  TYPE_2__* xsltStylesheetPtr ;
typedef  int /*<<< orphan*/ * xsltDecimalFormatPtr ;
typedef  int /*<<< orphan*/  xmlXPathParserContextPtr ;
typedef  TYPE_3__* xmlXPathObjectPtr ;
typedef  TYPE_4__* xmlNsPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_16__ {int /*<<< orphan*/ * href; } ;
struct TYPE_15__ {int /*<<< orphan*/  floatval; int /*<<< orphan*/  stringval; } ;
struct TYPE_14__ {int /*<<< orphan*/  errors; int /*<<< orphan*/  dict; int /*<<< orphan*/ * decimalFormat; } ;
struct TYPE_13__ {TYPE_10__* inst; TYPE_2__* style; } ;
struct TYPE_12__ {int /*<<< orphan*/  doc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAST_TO_NUMBER ; 
 int /*<<< orphan*/  CAST_TO_STRING ; 
 scalar_t__ XPATH_EXPRESSION_OK ; 
 int /*<<< orphan*/  XPATH_INVALID_ARITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,TYPE_10__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(xmlXPathParserContextPtr ctxt, int nargs)
{
    xmlXPathObjectPtr numberObj = NULL;
    xmlXPathObjectPtr formatObj = NULL;
    xmlXPathObjectPtr decimalObj = NULL;
    xsltStylesheetPtr sheet;
    xsltDecimalFormatPtr formatValues = NULL;
    xmlChar *result;
    const xmlChar *ncname;
    const xmlChar *prefix = NULL;
    const xmlChar *nsUri = NULL;
    xsltTransformContextPtr tctxt;

    tctxt = FUNC11(ctxt);
    if ((tctxt == NULL) || (tctxt->inst == NULL))
	return;
    sheet = tctxt->style;
    if (sheet == NULL)
	return;
    formatValues = sheet->decimalFormat;

    switch (nargs) {
    case 3:
	CAST_TO_STRING;
	decimalObj = FUNC1(ctxt);
        ncname = FUNC9(sheet->dict, decimalObj->stringval, &prefix);
        if (prefix != NULL) {
            xmlNsPtr ns = FUNC4(tctxt->inst->doc, tctxt->inst, prefix);
            if (ns == NULL) {
                FUNC10(tctxt, NULL, NULL,
                    "format-number : No namespace found for QName '%s:%s'\n",
                    prefix, ncname);
                sheet->errors++;
                ncname = NULL;
            }
            else {
                nsUri = ns->href;
            }
        }
        if (ncname != NULL) {
	    formatValues = FUNC7(sheet, nsUri, ncname);
        }
	if (formatValues == NULL) {
	    FUNC10(tctxt, NULL, NULL,
		    "format-number() : undeclared decimal format '%s'\n",
		    decimalObj->stringval);
	}
	/* Intentional fall-through */
    case 2:
	CAST_TO_STRING;
	formatObj = FUNC1(ctxt);
	CAST_TO_NUMBER;
	numberObj = FUNC1(ctxt);
	break;
    default:
	FUNC0(XPATH_INVALID_ARITY);
    }

    if (formatValues != NULL) {
	if (FUNC8(formatValues,
				       formatObj->stringval,
				       numberObj->floatval,
				       &result) == XPATH_EXPRESSION_OK) {
	    FUNC2(ctxt, FUNC6(result));
	    FUNC3(result);
	}
    }

    FUNC5(numberObj);
    FUNC5(formatObj);
    FUNC5(decimalObj);
}