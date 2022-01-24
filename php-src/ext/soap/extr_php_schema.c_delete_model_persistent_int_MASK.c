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
typedef  TYPE_2__* sdlContentModelPtr ;
struct TYPE_6__ {TYPE_2__* group_ref; TYPE_2__* content; } ;
struct TYPE_7__ {int kind; TYPE_1__ u; } ;

/* Variables and functions */
#define  XSD_CONTENT_ALL 133 
#define  XSD_CONTENT_CHOICE 132 
#define  XSD_CONTENT_ELEMENT 131 
#define  XSD_CONTENT_GROUP 130 
#define  XSD_CONTENT_GROUP_REF 129 
#define  XSD_CONTENT_SEQUENCE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(sdlContentModelPtr tmp)
{
	switch (tmp->kind) {
		case XSD_CONTENT_ELEMENT:
		case XSD_CONTENT_GROUP:
			break;
		case XSD_CONTENT_SEQUENCE:
		case XSD_CONTENT_ALL:
		case XSD_CONTENT_CHOICE:
			FUNC1(tmp->u.content);
			FUNC0(tmp->u.content);
			break;
		case XSD_CONTENT_GROUP_REF:
			FUNC0(tmp->u.group_ref);
			break;
		default:
			break;
	}
	FUNC0(tmp);
}