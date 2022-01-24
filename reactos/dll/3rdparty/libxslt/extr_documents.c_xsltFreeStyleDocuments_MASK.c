#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  int /*<<< orphan*/ * xsltNsMapPtr ;
typedef  TYPE_2__* xsltDocumentPtr ;
struct TYPE_9__ {int /*<<< orphan*/  doc; int /*<<< orphan*/  main; struct TYPE_9__* next; } ;
struct TYPE_8__ {TYPE_2__* docList; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(xsltStylesheetPtr style) {
    xsltDocumentPtr doc, cur;
#ifdef XSLT_REFACTORED_XSLT_NSCOMP
    xsltNsMapPtr nsMap;
#endif

    if (style == NULL)
	return;

#ifdef XSLT_REFACTORED_XSLT_NSCOMP
    if (XSLT_HAS_INTERNAL_NSMAP(style))
	nsMap = XSLT_GET_INTERNAL_NSMAP(style);
    else
	nsMap = NULL;
#endif

    cur = style->docList;
    while (cur != NULL) {
	doc = cur;
	cur = cur->next;
#ifdef XSLT_REFACTORED_XSLT_NSCOMP
	/*
	* Restore all changed namespace URIs of ns-decls.
	*/
	if (nsMap)
	    xsltRestoreDocumentNamespaces(nsMap, doc->doc);
#endif
	FUNC4(doc);
	if (!doc->main)
	    FUNC3(doc->doc);
        FUNC2(doc);
    }
}