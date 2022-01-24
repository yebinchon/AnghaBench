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
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* children; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,char*,char*) ; 

xmlNodePtr FUNC1(xmlNodePtr node, char *name, char *ns)
{
	while (node != NULL) {
		if (FUNC0(node, name, ns)) {
			return node;
		} else if (node->children != NULL) {
			xmlNodePtr tmp = FUNC1(node->children, name, ns);
			if (tmp) {
				return tmp;
			}
		}
		node = node->next;
	}
	return NULL;
}