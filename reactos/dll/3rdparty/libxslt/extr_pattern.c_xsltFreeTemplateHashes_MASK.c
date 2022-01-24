#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  int /*<<< orphan*/ * xmlHashTablePtr ;
struct TYPE_3__ {int /*<<< orphan*/ * namedTemplates; int /*<<< orphan*/ * commentMatch; int /*<<< orphan*/ * piMatch; int /*<<< orphan*/ * textMatch; int /*<<< orphan*/ * parentMatch; int /*<<< orphan*/ * attrMatch; int /*<<< orphan*/ * elemMatch; int /*<<< orphan*/ * keyMatch; int /*<<< orphan*/ * rootMatch; int /*<<< orphan*/ * templatesHash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * xsltFreeCompMatchListEntry ; 

void
FUNC2(xsltStylesheetPtr style) {
    if (style->templatesHash != NULL)
	FUNC0((xmlHashTablePtr) style->templatesHash,
		    xsltFreeCompMatchListEntry);
    if (style->rootMatch != NULL)
        FUNC1(style->rootMatch);
    if (style->keyMatch != NULL)
        FUNC1(style->keyMatch);
    if (style->elemMatch != NULL)
        FUNC1(style->elemMatch);
    if (style->attrMatch != NULL)
        FUNC1(style->attrMatch);
    if (style->parentMatch != NULL)
        FUNC1(style->parentMatch);
    if (style->textMatch != NULL)
        FUNC1(style->textMatch);
    if (style->piMatch != NULL)
        FUNC1(style->piMatch);
    if (style->commentMatch != NULL)
        FUNC1(style->commentMatch);
    if (style->namedTemplates != NULL)
        FUNC0(style->namedTemplates, NULL);
}