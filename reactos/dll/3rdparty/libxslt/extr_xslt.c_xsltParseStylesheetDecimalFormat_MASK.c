#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  TYPE_2__* xsltDecimalFormatPtr ;
typedef  TYPE_3__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_16__ {scalar_t__ type; int /*<<< orphan*/ * children; } ;
struct TYPE_15__ {int /*<<< orphan*/ * patternSeparator; int /*<<< orphan*/ * digit; int /*<<< orphan*/ * zeroDigit; int /*<<< orphan*/ * permille; int /*<<< orphan*/ * percent; int /*<<< orphan*/ * noNumber; int /*<<< orphan*/ * minusSign; int /*<<< orphan*/ * infinity; int /*<<< orphan*/ * grouping; int /*<<< orphan*/ * decimalPoint; struct TYPE_15__* next; } ;
struct TYPE_14__ {TYPE_2__* decimalFormat; int /*<<< orphan*/  errors; int /*<<< orphan*/  warnings; } ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 (char*) ; 
 scalar_t__ XML_ELEMENT_NODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_3__*,char*,...) ; 

__attribute__((used)) static void
FUNC9(xsltStylesheetPtr style, xmlNodePtr cur)
{
    xmlChar *prop;
    xsltDecimalFormatPtr format;
    xsltDecimalFormatPtr iter;

    if ((cur == NULL) || (style == NULL) || (cur->type != XML_ELEMENT_NODE))
	return;

    format = style->decimalFormat;

    prop = FUNC2(cur, FUNC0("name"), NULL);
    if (prop != NULL) {
        const xmlChar *nsUri;

        if (FUNC3(prop, 0) != 0) {
            FUNC8(NULL, style, cur,
                "xsl:decimal-format: Invalid QName '%s'.\n", prop);
	    style->warnings++;
            FUNC1(prop);
            return;
        }
        /*
        * TODO: Don't use xsltGetQNameURI().
        */
        nsUri = FUNC5(cur, &prop);
        if (prop == NULL) {
	    style->warnings++;
            return;
        }
	format = FUNC4(style, nsUri, prop);
	if (format != NULL) {
	    FUNC8(NULL, style, cur,
	 "xsltParseStylestyleDecimalFormat: %s already exists\n", prop);
	    style->warnings++;
            FUNC1(prop);
	    return;
	}
	format = FUNC6(nsUri, prop);
	if (format == NULL) {
	    FUNC8(NULL, style, cur,
     "xsltParseStylestyleDecimalFormat: failed creating new decimal-format\n");
	    style->errors++;
            FUNC1(prop);
	    return;
	}
	/* Append new decimal-format structure */
	for (iter = style->decimalFormat; iter->next; iter = iter->next)
	    ;
	if (iter)
	    iter->next = format;
    }

    prop = FUNC2(cur, (const xmlChar *)"decimal-separator", NULL);
    if (prop != NULL) {
	if (format->decimalPoint != NULL) FUNC1(format->decimalPoint);
	format->decimalPoint  = prop;
    }

    prop = FUNC2(cur, (const xmlChar *)"grouping-separator", NULL);
    if (prop != NULL) {
	if (format->grouping != NULL) FUNC1(format->grouping);
	format->grouping  = prop;
    }

    prop = FUNC2(cur, (const xmlChar *)"infinity", NULL);
    if (prop != NULL) {
	if (format->infinity != NULL) FUNC1(format->infinity);
	format->infinity  = prop;
    }

    prop = FUNC2(cur, (const xmlChar *)"minus-sign", NULL);
    if (prop != NULL) {
	if (format->minusSign != NULL) FUNC1(format->minusSign);
	format->minusSign  = prop;
    }

    prop = FUNC2(cur, (const xmlChar *)"NaN", NULL);
    if (prop != NULL) {
	if (format->noNumber != NULL) FUNC1(format->noNumber);
	format->noNumber  = prop;
    }

    prop = FUNC2(cur, (const xmlChar *)"percent", NULL);
    if (prop != NULL) {
	if (format->percent != NULL) FUNC1(format->percent);
	format->percent  = prop;
    }

    prop = FUNC2(cur, (const xmlChar *)"per-mille", NULL);
    if (prop != NULL) {
	if (format->permille != NULL) FUNC1(format->permille);
	format->permille  = prop;
    }

    prop = FUNC2(cur, (const xmlChar *)"zero-digit", NULL);
    if (prop != NULL) {
	if (format->zeroDigit != NULL) FUNC1(format->zeroDigit);
	format->zeroDigit  = prop;
    }

    prop = FUNC2(cur, (const xmlChar *)"digit", NULL);
    if (prop != NULL) {
	if (format->digit != NULL) FUNC1(format->digit);
	format->digit  = prop;
    }

    prop = FUNC2(cur, (const xmlChar *)"pattern-separator", NULL);
    if (prop != NULL) {
	if (format->patternSeparator != NULL) FUNC1(format->patternSeparator);
	format->patternSeparator  = prop;
    }
    if (cur->children != NULL) {
	FUNC7(style, cur->children);
    }
}