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
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlAttrPtr ;
typedef  int /*<<< orphan*/  sdlTypePtr ;
typedef  int /*<<< orphan*/  sdlPtr ;
typedef  TYPE_2__* sdlContentModelPtr ;
typedef  int /*<<< orphan*/  sdlContentModel ;
struct TYPE_7__ {int /*<<< orphan*/  content; } ;
struct TYPE_8__ {TYPE_1__ u; int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 int TRUE ; 
 int /*<<< orphan*/  XSD_CONTENT_ANY ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr anyType, sdlTypePtr cur_type, sdlContentModelPtr model)
{
	if (model != NULL) {
		sdlContentModelPtr newModel;

		newModel = FUNC0(sizeof(sdlContentModel));
		newModel->kind = XSD_CONTENT_ANY;

		FUNC1(anyType, newModel);

		FUNC2(model->u.content, newModel);
	}
	return TRUE;
}