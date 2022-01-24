#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  TYPE_2__* xmlNsPtr ;
typedef  TYPE_3__* xmlNodePtr ;
typedef  scalar_t__ xmlChar ;
struct TYPE_14__ {scalar_t__ type; } ;
struct TYPE_13__ {int /*<<< orphan*/  href; } ;
struct TYPE_12__ {int /*<<< orphan*/  warnings; int /*<<< orphan*/  doc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ XML_ELEMENT_NODE ; 
 int /*<<< orphan*/ * XSLT_NAMESPACE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__* FUNC2 (TYPE_3__*,scalar_t__ const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__*,scalar_t__ const*) ; 
 scalar_t__* FUNC5 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_3__*,char*,scalar_t__*) ; 

__attribute__((used)) static void
FUNC9(xsltStylesheetPtr style, xmlNodePtr cur,
			     int isXsltElem) {
    xmlChar *prefixes;
    xmlChar *prefix, *end;

    if ((cur == NULL) || (style == NULL) || (cur->type != XML_ELEMENT_NODE))
	return;

    if (isXsltElem) {
	/* For xsl:stylesheet/xsl:transform. */
	prefixes = FUNC2(cur,
	    (const xmlChar *)"extension-element-prefixes", NULL);
    } else {
	/* For literal result elements and extension instructions. */
	prefixes = FUNC2(cur,
	    (const xmlChar *)"extension-element-prefixes", XSLT_NAMESPACE);
    }
    if (prefixes == NULL) {
	return;
    }

    prefix = prefixes;
    while (*prefix != 0) {
	while (FUNC0(*prefix)) prefix++;
	if (*prefix == 0)
	    break;
        end = prefix;
	while ((*end != 0) && (!FUNC0(*end))) end++;
	prefix = FUNC5(prefix, end - prefix);
	if (prefix) {
	    xmlNsPtr ns;

	    if (FUNC4(prefix, (const xmlChar *)"#default"))
		ns = FUNC3(style->doc, cur, NULL);
	    else
		ns = FUNC3(style->doc, cur, prefix);
	    if (ns == NULL) {
		FUNC8(NULL, style, cur,
	    "xsl:extension-element-prefix : undefined namespace %s\n",
	                         prefix);
		if (style != NULL) style->warnings++;
	    } else {
#ifdef WITH_XSLT_DEBUG_PARSING
		xsltGenericDebug(xsltGenericDebugContext,
		    "add extension prefix %s\n", prefix);
#endif
		FUNC7(style, prefix, ns->href);
	    }
	    FUNC1(prefix);
	}
	prefix = end;
    }
    FUNC1(prefixes);
}