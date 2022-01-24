#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
typedef  TYPE_2__* xsltDocumentPtr ;
struct TYPE_7__ {int /*<<< orphan*/  doc; int /*<<< orphan*/  main; struct TYPE_7__* next; } ;
struct TYPE_6__ {TYPE_2__* styleList; TYPE_2__* docList; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void
FUNC3(xsltTransformContextPtr ctxt) {
    xsltDocumentPtr doc, cur;

    cur = ctxt->docList;
    while (cur != NULL) {
	doc = cur;
	cur = cur->next;
	FUNC2(doc);
	if (!doc->main)
	    FUNC1(doc->doc);
        FUNC0(doc);
    }
    cur = ctxt->styleList;
    while (cur != NULL) {
	doc = cur;
	cur = cur->next;
	FUNC2(doc);
	if (!doc->main)
	    FUNC1(doc->doc);
        FUNC0(doc);
    }
}