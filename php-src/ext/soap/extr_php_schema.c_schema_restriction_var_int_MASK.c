#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlNodePtr ;
typedef  TYPE_3__* xmlAttrPtr ;
typedef  TYPE_4__* sdlRestrictionIntPtr ;
typedef  int /*<<< orphan*/  sdlRestrictionInt ;
struct TYPE_13__ {int fixed; int /*<<< orphan*/  value; } ;
struct TYPE_12__ {TYPE_1__* children; } ;
struct TYPE_11__ {int /*<<< orphan*/  properties; } ;
struct TYPE_10__ {scalar_t__ content; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_4__* FUNC1 (int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static int FUNC6(xmlNodePtr val, sdlRestrictionIntPtr *valptr)
{
	xmlAttrPtr fixed, value;

	if ((*valptr) == NULL) {
		(*valptr) = FUNC1(sizeof(sdlRestrictionInt));
	}
	FUNC3((*valptr), 0, sizeof(sdlRestrictionInt));

	fixed = FUNC2(val->properties, "fixed");
	(*valptr)->fixed = FALSE;
	if (fixed != NULL) {
		if (!FUNC5((char*)fixed->children->content, "true", sizeof("true")) ||
			!FUNC5((char*)fixed->children->content, "1", sizeof("1")))
			(*valptr)->fixed = TRUE;
	}

	value = FUNC2(val->properties, "value");
	if (value == NULL) {
		FUNC4(E_ERROR, "Parsing Schema: missing restriction value");
	}

	(*valptr)->value = FUNC0((char*)value->children->content);

	return TRUE;
}