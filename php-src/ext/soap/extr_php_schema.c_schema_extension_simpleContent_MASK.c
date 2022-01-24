#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlNsPtr ;
typedef  TYPE_3__* xmlNodePtr ;
typedef  TYPE_4__* xmlAttrPtr ;
typedef  TYPE_5__* sdlTypePtr ;
typedef  int /*<<< orphan*/  sdlPtr ;
struct TYPE_24__ {int /*<<< orphan*/  encode; } ;
struct TYPE_23__ {TYPE_1__* children; } ;
struct TYPE_22__ {int /*<<< orphan*/  name; struct TYPE_22__* next; struct TYPE_22__* children; int /*<<< orphan*/  doc; int /*<<< orphan*/  properties; } ;
struct TYPE_21__ {int /*<<< orphan*/  href; } ;
struct TYPE_20__ {int /*<<< orphan*/  content; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char**,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr extType, sdlTypePtr cur_type)
{
	xmlNodePtr trav;
	xmlAttrPtr base;

	base = FUNC2(extType->properties, "base");
	if (base != NULL) {
		char *type, *ns;
		xmlNsPtr nsptr;

		FUNC5(base->children->content, &type, &ns);
		nsptr = FUNC10(extType->doc, extType, FUNC0(ns));
		if (nsptr != NULL) {
			cur_type->encode = FUNC3(sdl, cur_type, nsptr->href, FUNC0(type));
		}
		if (type) {FUNC1(type);}
		if (ns) {FUNC1(ns);}
	} else {
		FUNC8(E_ERROR, "Parsing Schema: extension has no 'base' attribute");
	}

	trav = extType->children;
	if (trav != NULL && FUNC4(trav,"annotation")) {
		/* TODO: <annotation> support */
		trav = trav->next;
	}
	while (trav != NULL) {
		if (FUNC4(trav,"attribute")) {
			FUNC6(sdl, tns, trav, cur_type, NULL);
		} else if (FUNC4(trav,"attributeGroup")) {
			FUNC7(sdl, tns, trav, cur_type, NULL);
		} else if (FUNC4(trav,"anyAttribute")) {
			/* TODO: <anyAttribute> support */
			trav = trav->next;
			break;
		} else {
			FUNC9(E_ERROR, "Parsing Schema: unexpected <%s> in extension", trav->name);
		}
		trav = trav->next;
	}
	if (trav != NULL) {
		FUNC9(E_ERROR, "Parsing Schema: unexpected <%s> in extension", trav->name);
	}
	return TRUE;
}