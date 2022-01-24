#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlNodePtr ;
typedef  TYPE_3__* xmlAttrPtr ;
struct TYPE_11__ {TYPE_1__* children; } ;
struct TYPE_10__ {struct TYPE_10__* next; int /*<<< orphan*/  properties; } ;
struct TYPE_9__ {scalar_t__ content; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

xmlNodePtr FUNC3(xmlNodePtr node, char *name, char *name_ns, char *attribute, char *value, char *attr_ns)
{
	xmlAttrPtr attr;

	while (node != NULL) {
		if (name != NULL) {
			node = FUNC1(node, name, name_ns);
			if (node==NULL) {
				return NULL;
			}
		}

		attr = FUNC0(node->properties, attribute, attr_ns);
		if (attr != NULL && FUNC2((char*)attr->children->content, value) == 0) {
			return node;
		}
		node = node->next;
	}
	return NULL;
}