#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlNodePtr ;
struct TYPE_5__ {scalar_t__ type; struct TYPE_5__* next; struct TYPE_5__* children; int /*<<< orphan*/  content; } ;

/* Variables and functions */
 scalar_t__ XML_CDATA_SECTION_NODE ; 
 scalar_t__ XML_ELEMENT_NODE ; 
 scalar_t__ XML_TEXT_NODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(xmlNodePtr node)
{
	xmlNodePtr trav;
	xmlNodePtr del = NULL;

	trav = node->children;
	while (trav != NULL) {
		if (del != NULL) {
			FUNC2(del);
			FUNC1(del);
			del = NULL;
		}
		if (trav->type == XML_TEXT_NODE) {
			if (FUNC0(trav->content)) {
				del = trav;
			}
		} else if ((trav->type != XML_ELEMENT_NODE) &&
		           (trav->type != XML_CDATA_SECTION_NODE)) {
			del = trav;
		} else if (trav->children != NULL) {
			FUNC3(trav);
		}
		trav = trav->next;
	}
	if (del != NULL) {
		FUNC2(del);
		FUNC1(del);
	}
}