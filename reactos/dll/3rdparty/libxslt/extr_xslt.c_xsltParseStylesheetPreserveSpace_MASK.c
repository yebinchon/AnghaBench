#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  TYPE_2__* xmlNodePtr ;
typedef  scalar_t__ xmlChar ;
struct TYPE_11__ {scalar_t__ type; int /*<<< orphan*/ * children; } ;
struct TYPE_10__ {int stripAll; int /*<<< orphan*/ * stripSpaces; int /*<<< orphan*/  warnings; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ XML_ELEMENT_NODE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__* FUNC2 (TYPE_2__*,scalar_t__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__ const*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__*,scalar_t__ const*) ; 
 scalar_t__* FUNC6 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 scalar_t__* FUNC8 (TYPE_2__*,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,char*) ; 

__attribute__((used)) static void
FUNC11(xsltStylesheetPtr style, xmlNodePtr cur) {
    xmlChar *elements;
    xmlChar *element, *end;

    if ((cur == NULL) || (style == NULL) || (cur->type != XML_ELEMENT_NODE))
	return;

    elements = FUNC2(cur, (const xmlChar *)"elements", NULL);
    if (elements == NULL) {
	FUNC10(NULL, style, cur,
	    "xsltParseStylesheetPreserveSpace: missing elements attribute\n");
	if (style != NULL) style->warnings++;
	return;
    }

    if (style->stripSpaces == NULL)
	style->stripSpaces = FUNC4(10);
    if (style->stripSpaces == NULL)
	return;

    element = elements;
    while (*element != 0) {
	while (FUNC0(*element)) element++;
	if (*element == 0)
	    break;
        end = element;
	while ((*end != 0) && (!FUNC0(*end))) end++;
	element = FUNC6(element, end - element);
	if (element) {
#ifdef WITH_XSLT_DEBUG_PARSING
	    xsltGenericDebug(xsltGenericDebugContext,
		"add preserved space element %s\n", element);
#endif
	    if (FUNC5(element, (const xmlChar *)"*")) {
		style->stripAll = -1;
	    } else {
		const xmlChar *URI;

		/*
		* TODO: Don't use xsltGetQNameURI().
		*/
                URI = FUNC8(cur, &element);

		FUNC3(style->stripSpaces, element, URI,
				(xmlChar *) "preserve");
	    }
	    FUNC1(element);
	}
	element = end;
    }
    FUNC1(elements);
    if (cur->children != NULL) {
	FUNC9(style, cur->children);
    }
}