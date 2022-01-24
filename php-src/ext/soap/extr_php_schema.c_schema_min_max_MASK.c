#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlNodePtr ;
typedef  TYPE_3__* xmlAttrPtr ;
typedef  TYPE_4__* sdlContentModelPtr ;
struct TYPE_11__ {int min_occurs; int max_occurs; } ;
struct TYPE_10__ {TYPE_1__* children; } ;
struct TYPE_9__ {int /*<<< orphan*/  properties; } ;
struct TYPE_8__ {scalar_t__ content; } ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

void FUNC3(xmlNodePtr node, sdlContentModelPtr model)
{
	xmlAttrPtr attr = FUNC1(node->properties, "minOccurs");

	if (attr) {
		model->min_occurs = FUNC0((char*)attr->children->content);
	} else {
		model->min_occurs = 1;
	}

	attr = FUNC1(node->properties, "maxOccurs");
	if (attr) {
		if (!FUNC2((char*)attr->children->content, "unbounded", sizeof("unbounded"))) {
			model->max_occurs = -1;
		} else {
			model->max_occurs = FUNC0((char*)attr->children->content);
		}
	} else {
		model->max_occurs = 1;
	}
}