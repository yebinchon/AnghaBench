#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  TYPE_2__* xsltDocumentPtr ;
typedef  int /*<<< orphan*/  xsltDocument ;
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  scalar_t__ xmlDocPtr ;
struct TYPE_8__ {struct TYPE_8__* next; scalar_t__ doc; } ;
struct TYPE_7__ {TYPE_2__* docList; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,char*) ; 

xsltDocumentPtr
FUNC3(xsltStylesheetPtr style, xmlDocPtr doc) {
    xsltDocumentPtr cur;

    cur = (xsltDocumentPtr) FUNC1(sizeof(xsltDocument));
    if (cur == NULL) {
	FUNC2(NULL, style, (xmlNodePtr) doc,
		"xsltNewStyleDocument : malloc failed\n");
	return(NULL);
    }
    FUNC0(cur, 0, sizeof(xsltDocument));
    cur->doc = doc;
    if (style != NULL) {
	cur->next = style->docList;
	style->docList = cur;
    }
    return(cur);
}