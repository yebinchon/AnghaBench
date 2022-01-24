#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlAttrPtr ;
typedef  TYPE_2__* sdlTypePtr ;
typedef  int /*<<< orphan*/  sdlPtr ;
struct TYPE_11__ {int /*<<< orphan*/  kind; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; struct TYPE_10__* next; struct TYPE_10__* children; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  XSD_TYPEKIND_EXTENSION ; 
 int /*<<< orphan*/  XSD_TYPEKIND_RESTRICTION ; 
 scalar_t__ FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr simpCompType, sdlTypePtr cur_type)
{
	xmlNodePtr trav;

	trav = simpCompType->children;
	if (trav != NULL && FUNC0(trav,"annotation")) {
		/* TODO: <annotation> support */
		trav = trav->next;
	}
	if (trav != NULL) {
		if (FUNC0(trav, "restriction")) {
			cur_type->kind = XSD_TYPEKIND_RESTRICTION;
			FUNC2(sdl, tns, trav, cur_type, 0);
			trav = trav->next;
		} else if (FUNC0(trav, "extension")) {
			cur_type->kind = XSD_TYPEKIND_EXTENSION;
			FUNC1(sdl, tns, trav, cur_type);
			trav = trav->next;
		} else {
			FUNC4(E_ERROR, "Parsing Schema: unexpected <%s> in simpleContent", trav->name);
		}
	} else {
		FUNC3(E_ERROR, "Parsing Schema: expected <restriction> or <extension> in simpleContent");
	}
	if (trav != NULL) {
		FUNC4(E_ERROR, "Parsing Schema: unexpected <%s> in simpleContent", trav->name);
	}

	return TRUE;
}