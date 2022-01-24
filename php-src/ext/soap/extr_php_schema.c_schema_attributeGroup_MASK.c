#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlNsPtr ;
typedef  TYPE_3__* xmlNodePtr ;
typedef  TYPE_4__* xmlAttrPtr ;
struct TYPE_31__ {int /*<<< orphan*/  s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ smart_str ;
typedef  TYPE_6__* sdlTypePtr ;
typedef  int /*<<< orphan*/  sdlType ;
typedef  int /*<<< orphan*/  sdlPtr ;
struct TYPE_33__ {int /*<<< orphan*/  attributeGroups; } ;
typedef  TYPE_7__ sdlCtx ;
typedef  TYPE_6__* sdlAttributePtr ;
typedef  int /*<<< orphan*/  sdlAttribute ;
struct TYPE_32__ {char* name; char* namens; int /*<<< orphan*/ * attributes; int /*<<< orphan*/  ref; } ;
struct TYPE_30__ {TYPE_1__* children; } ;
struct TYPE_29__ {int /*<<< orphan*/  name; struct TYPE_29__* next; struct TYPE_29__* children; int /*<<< orphan*/  doc; int /*<<< orphan*/  properties; } ;
struct TYPE_28__ {scalar_t__ href; } ;
struct TYPE_27__ {scalar_t__ content; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delete_attribute ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char**,char**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_3__*,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,char) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC18 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,TYPE_6__*) ; 

__attribute__((used)) static int FUNC22(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr attrGroup, sdlTypePtr cur_type, sdlCtx *ctx)
{
	xmlNodePtr trav;
	xmlAttrPtr name, ref = NULL;


	name = FUNC7(attrGroup->properties, "name");
	if (name == NULL) {
		name = ref = FUNC7(attrGroup->properties, "ref");
	}
	if (name) {
		if (cur_type == NULL) {
			xmlAttrPtr ns;
			sdlTypePtr newType;
			smart_str key = {0};

			ns = FUNC7(attrGroup->properties, "targetNamespace");
			if (ns == NULL) {
				ns = tns;
			}
			newType = FUNC4(sizeof(sdlType));
			FUNC8(newType, 0, sizeof(sdlType));
			newType->name = FUNC5((char*)name->children->content);
			newType->namens = FUNC5((char*)ns->children->content);

			FUNC14(&key, newType->namens);
			FUNC13(&key, ':');
			FUNC14(&key, newType->name);
			FUNC12(&key);

			if (FUNC19(ctx->attributeGroups, key.s, newType) == NULL) {
				FUNC17(E_ERROR, "Parsing Schema: attributeGroup '%s' already defined", FUNC2(key.s));
			}
			cur_type = newType;
			FUNC15(&key);
		} else if (ref) {
			sdlAttributePtr newAttr;
			char *group_name, *ns;
			smart_str key = {0};
			xmlNsPtr nsptr;

			if (cur_type->attributes == NULL) {
				cur_type->attributes = FUNC4(sizeof(HashTable));
				FUNC20(cur_type->attributes, 0, NULL, delete_attribute, 0);
			}
			newAttr = FUNC4(sizeof(sdlAttribute));
			FUNC8(newAttr, 0, sizeof(sdlAttribute));

			FUNC10(ref->children->content, &group_name, &ns);
			nsptr = FUNC18(attrGroup->doc, attrGroup, FUNC0(ns));
			if (nsptr != NULL) {
				FUNC14(&key, (char*)nsptr->href);
			}
			FUNC13(&key, ':');
			FUNC14(&key, group_name);
			FUNC12(&key);
			newAttr->ref = FUNC6(FUNC2(key.s), FUNC1(key.s));
			if (group_name) {FUNC3(group_name);}
			if (ns) {FUNC3(ns);}
			FUNC15(&key);

			FUNC21(cur_type->attributes, newAttr);
			cur_type = NULL;
		}
	} else{
		FUNC16(E_ERROR, "Parsing Schema: attributeGroup has no 'name' nor 'ref' attributes");
	}

	trav = attrGroup->children;
	if (trav != NULL && FUNC9(trav, "annotation")) {
		/* TODO: <annotation> support */
		trav = trav->next;
	}
	while (trav != NULL) {
		if (FUNC9(trav,"attribute")) {
			if (ref != NULL) {
				FUNC16(E_ERROR, "Parsing Schema: attributeGroup has both 'ref' attribute and subattribute");
			}
			FUNC11(sdl, tns, trav, cur_type, NULL);
		} else if (FUNC9(trav,"attributeGroup")) {
			if (ref != NULL) {
				FUNC16(E_ERROR, "Parsing Schema: attributeGroup has both 'ref' attribute and subattribute");
			}
			FUNC22(sdl, tns, trav, cur_type, NULL);
		} else if (FUNC9(trav,"anyAttribute")) {
			if (ref != NULL) {
				FUNC16(E_ERROR, "Parsing Schema: attributeGroup has both 'ref' attribute and subattribute");
			}
			/* TODO: <anyAttribute> support */
			trav = trav->next;
			break;
		} else {
			FUNC17(E_ERROR, "Parsing Schema: unexpected <%s> in attributeGroup", trav->name);
		}
		trav = trav->next;
	}
	if (trav != NULL) {
		FUNC17(E_ERROR, "Parsing Schema: unexpected <%s> in attributeGroup", trav->name);
	}
	return TRUE;
}