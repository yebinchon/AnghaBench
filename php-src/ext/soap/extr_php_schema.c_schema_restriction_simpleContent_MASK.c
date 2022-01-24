#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_26__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlNsPtr ;
typedef  TYPE_3__* xmlNodePtr ;
typedef  TYPE_4__* xmlAttrPtr ;
typedef  TYPE_5__* sdlTypePtr ;
typedef  int /*<<< orphan*/  sdlRestrictions ;
typedef  TYPE_6__* sdlRestrictionCharPtr ;
typedef  int /*<<< orphan*/  sdlPtr ;
struct TYPE_36__ {int /*<<< orphan*/  value; } ;
struct TYPE_35__ {TYPE_26__* restrictions; int /*<<< orphan*/  encode; } ;
struct TYPE_34__ {TYPE_1__* children; } ;
struct TYPE_33__ {int /*<<< orphan*/  name; struct TYPE_33__* next; struct TYPE_33__* children; int /*<<< orphan*/  doc; int /*<<< orphan*/  properties; } ;
struct TYPE_32__ {int /*<<< orphan*/  href; } ;
struct TYPE_31__ {int /*<<< orphan*/ * enumeration; TYPE_6__* pattern; TYPE_6__* whiteSpace; int /*<<< orphan*/  maxLength; int /*<<< orphan*/  minLength; int /*<<< orphan*/  length; int /*<<< orphan*/  fractionDigits; int /*<<< orphan*/  totalDigits; int /*<<< orphan*/  maxInclusive; int /*<<< orphan*/  maxExclusive; int /*<<< orphan*/  minInclusive; int /*<<< orphan*/  minExclusive; } ;
struct TYPE_30__ {int /*<<< orphan*/  content; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  delete_restriction_var_char ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (int) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_26__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char**,char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 

__attribute__((used)) static int FUNC20(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr restType, sdlTypePtr cur_type, int simpleType)
{
	xmlNodePtr trav;
	xmlAttrPtr base;

	base = FUNC4(restType->properties, "base");
	if (base != NULL) {
		char *type, *ns;
		xmlNsPtr nsptr;

		FUNC8(base->children->content, &type, &ns);
		nsptr = FUNC17(restType->doc, restType, FUNC0(ns));
		if (nsptr != NULL) {
			cur_type->encode = FUNC5(sdl, cur_type, nsptr->href, FUNC0(type));
		}
		if (type) {FUNC2(type);}
		if (ns) {FUNC2(ns);}
	} else if (!simpleType) {
		FUNC14(E_ERROR, "Parsing Schema: restriction has no 'base' attribute");
	}

	if (cur_type->restrictions == NULL) {
		cur_type->restrictions = FUNC3(sizeof(sdlRestrictions));
		FUNC6(cur_type->restrictions, 0, sizeof(sdlRestrictions));
	}

	trav = restType->children;
	if (trav != NULL && FUNC7(trav, "annotation")) {
		/* TODO: <annotation> support */
		trav = trav->next;
	}
	if (trav != NULL && FUNC7(trav, "simpleType")) {
		FUNC13(sdl, tns, trav, cur_type);
		trav = trav->next;
	}
	while (trav != NULL) {
		if (FUNC7(trav, "minExclusive")) {
			FUNC12(trav, &cur_type->restrictions->minExclusive);
		} else if (FUNC7(trav, "minInclusive")) {
			FUNC12(trav, &cur_type->restrictions->minInclusive);
		} else if (FUNC7(trav, "maxExclusive")) {
			FUNC12(trav, &cur_type->restrictions->maxExclusive);
		} else if (FUNC7(trav, "maxInclusive")) {
			FUNC12(trav, &cur_type->restrictions->maxInclusive);
		} else if (FUNC7(trav, "totalDigits")) {
			FUNC12(trav, &cur_type->restrictions->totalDigits);
		} else if (FUNC7(trav, "fractionDigits")) {
			FUNC12(trav, &cur_type->restrictions->fractionDigits);
		} else if (FUNC7(trav, "length")) {
			FUNC12(trav, &cur_type->restrictions->length);
		} else if (FUNC7(trav, "minLength")) {
			FUNC12(trav, &cur_type->restrictions->minLength);
		} else if (FUNC7(trav, "maxLength")) {
			FUNC12(trav, &cur_type->restrictions->maxLength);
		} else if (FUNC7(trav, "whiteSpace")) {
			FUNC11(trav, &cur_type->restrictions->whiteSpace);
		} else if (FUNC7(trav, "pattern")) {
			FUNC11(trav, &cur_type->restrictions->pattern);
		} else if (FUNC7(trav, "enumeration")) {
			sdlRestrictionCharPtr enumval = NULL;

			FUNC11(trav, &enumval);
			if (cur_type->restrictions->enumeration == NULL) {
				cur_type->restrictions->enumeration = FUNC3(sizeof(HashTable));
				FUNC18(cur_type->restrictions->enumeration, 0, NULL, delete_restriction_var_char, 0);
			}
			if (FUNC19(cur_type->restrictions->enumeration, enumval->value, FUNC16(enumval->value), enumval) == NULL) {
				FUNC1(enumval);
			}
		} else {
			break;
		}
		trav = trav->next;
	}
	if (!simpleType) {
		while (trav != NULL) {
			if (FUNC7(trav,"attribute")) {
				FUNC9(sdl, tns, trav, cur_type, NULL);
			} else if (FUNC7(trav,"attributeGroup")) {
				FUNC10(sdl, tns, trav, cur_type, NULL);
			} else if (FUNC7(trav,"anyAttribute")) {
				/* TODO: <anyAttribute> support */
				trav = trav->next;
				break;
			} else {
				FUNC15(E_ERROR, "Parsing Schema: unexpected <%s> in restriction", trav->name);
			}
			trav = trav->next;
		}
	}
	if (trav != NULL) {
		FUNC15(E_ERROR, "Parsing Schema: unexpected <%s> in restriction", trav->name);
	}

	return TRUE;
}