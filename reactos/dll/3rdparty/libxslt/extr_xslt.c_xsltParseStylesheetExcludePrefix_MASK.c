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
struct TYPE_13__ {scalar_t__ href; } ;
struct TYPE_12__ {int /*<<< orphan*/  warnings; int /*<<< orphan*/  doc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ XML_ELEMENT_NODE ; 
 int /*<<< orphan*/ * XSLT_NAMESPACE ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__* FUNC3 (TYPE_3__*,scalar_t__ const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__*,scalar_t__ const*) ; 
 scalar_t__* FUNC6 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_3__*,char*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC9(xsltStylesheetPtr style, xmlNodePtr cur,
				 int isXsltElem)
{
    int nb = 0;
    xmlChar *prefixes;
    xmlChar *prefix, *end;

    if ((cur == NULL) || (style == NULL) || (cur->type != XML_ELEMENT_NODE))
	return(0);

    if (isXsltElem)
	prefixes = FUNC3(cur,
	    (const xmlChar *)"exclude-result-prefixes", NULL);
    else
	prefixes = FUNC3(cur,
	    (const xmlChar *)"exclude-result-prefixes", XSLT_NAMESPACE);

    if (prefixes == NULL) {
	return(0);
    }

    prefix = prefixes;
    while (*prefix != 0) {
	while (FUNC0(*prefix)) prefix++;
	if (*prefix == 0)
	    break;
        end = prefix;
	while ((*end != 0) && (!FUNC0(*end))) end++;
	prefix = FUNC6(prefix, end - prefix);
	if (prefix) {
	    xmlNsPtr ns;

	    if (FUNC5(prefix, (const xmlChar *)"#default"))
		ns = FUNC4(style->doc, cur, NULL);
	    else
		ns = FUNC4(style->doc, cur, prefix);
	    if (ns == NULL) {
		FUNC8(NULL, style, cur,
	    "xsl:exclude-result-prefixes : undefined namespace %s\n",
	                         prefix);
		if (style != NULL) style->warnings++;
	    } else {
		if (FUNC1(style, (xmlChar *) ns->href) >= 0) {
#ifdef WITH_XSLT_DEBUG_PARSING
		    xsltGenericDebug(xsltGenericDebugContext,
			"exclude result prefix %s\n", prefix);
#endif
		    nb++;
		}
	    }
	    FUNC2(prefix);
	}
	prefix = end;
    }
    FUNC2(prefixes);
    return(nb);
}