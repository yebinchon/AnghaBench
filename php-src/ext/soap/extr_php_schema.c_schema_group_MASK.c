#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_51__   TYPE_9__ ;
typedef  struct TYPE_50__   TYPE_8__ ;
typedef  struct TYPE_49__   TYPE_7__ ;
typedef  struct TYPE_48__   TYPE_6__ ;
typedef  struct TYPE_47__   TYPE_5__ ;
typedef  struct TYPE_46__   TYPE_4__ ;
typedef  struct TYPE_45__   TYPE_3__ ;
typedef  struct TYPE_44__   TYPE_2__ ;
typedef  struct TYPE_43__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* xmlNsPtr ;
typedef  TYPE_4__* xmlNodePtr ;
typedef  TYPE_5__* xmlAttrPtr ;
struct TYPE_48__ {int /*<<< orphan*/  s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_6__ smart_str ;
typedef  TYPE_7__* sdlTypePtr ;
typedef  int /*<<< orphan*/  sdlType ;
typedef  TYPE_8__* sdlPtr ;
typedef  TYPE_9__* sdlContentModelPtr ;
typedef  int /*<<< orphan*/  sdlContentModel ;
struct TYPE_44__ {int /*<<< orphan*/ * content; int /*<<< orphan*/  group_ref; } ;
struct TYPE_51__ {void* kind; TYPE_2__ u; } ;
struct TYPE_50__ {int /*<<< orphan*/ * groups; } ;
struct TYPE_49__ {TYPE_9__* model; } ;
struct TYPE_47__ {TYPE_1__* children; } ;
struct TYPE_46__ {int /*<<< orphan*/  name; struct TYPE_46__* next; struct TYPE_46__* children; int /*<<< orphan*/  properties; int /*<<< orphan*/  doc; } ;
struct TYPE_45__ {scalar_t__ href; } ;
struct TYPE_43__ {scalar_t__ content; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_ERROR ; 
 int TRUE ; 
 void* XSD_CONTENT_ALL ; 
 void* XSD_CONTENT_CHOICE ; 
 void* XSD_CONTENT_GROUP_REF ; 
 void* XSD_CONTENT_SEQUENCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delete_model ; 
 int /*<<< orphan*/  delete_type ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char**,char**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*,TYPE_5__*,TYPE_4__*,TYPE_7__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*,TYPE_5__*,TYPE_4__*,TYPE_7__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*,TYPE_5__*,TYPE_4__*,TYPE_7__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,char) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC20 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,TYPE_9__*) ; 

__attribute__((used)) static int FUNC24(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr groupType, sdlTypePtr cur_type, sdlContentModelPtr model)
{
	xmlNodePtr trav;
	xmlAttrPtr ns, name, ref = NULL;
	sdlContentModelPtr newModel = NULL;

	ns = FUNC6(groupType->properties, "targetNamespace");
	if (ns == NULL) {
		ns = tns;
	}

	name = FUNC6(groupType->properties, "name");
	if (name == NULL) {
		name = ref = FUNC6(groupType->properties, "ref");
	}

	if (name) {
		smart_str key = {0};

		if (ref) {
			char *type, *ns;
			xmlNsPtr nsptr;

			FUNC9(ref->children->content, &type, &ns);
			nsptr = FUNC20(groupType->doc, groupType, FUNC0(ns));
			if (nsptr != NULL) {
				FUNC16(&key, (char*)nsptr->href);
			} else {
				xmlAttrPtr ns = FUNC6(groupType->properties, "targetNamespace");
				if (ns == NULL) {
					ns = tns;
				}
				if (ns) {
					FUNC16(&key, (char*)ns->children->content);
				}
			}
			FUNC15(&key, ':');
			FUNC16(&key, type);
			FUNC14(&key);

			newModel = FUNC4(sizeof(sdlContentModel));
			newModel->kind = XSD_CONTENT_GROUP_REF;
			newModel->u.group_ref = FUNC5(FUNC2(key.s), FUNC1(key.s));

			if (type) {FUNC3(type);}
			if (ns) {FUNC3(ns);}
		} else {
			newModel = FUNC4(sizeof(sdlContentModel));
			newModel->kind = XSD_CONTENT_SEQUENCE; /* will be redefined */
			newModel->u.content = FUNC4(sizeof(HashTable));
			FUNC22(newModel->u.content, 0, NULL, delete_model, 0);

			FUNC16(&key, (char*)ns->children->content);
			FUNC15(&key, ':');
			FUNC16(&key, (char*)name->children->content);
			FUNC14(&key);
		}

		if (cur_type == NULL) {
			sdlTypePtr newType;

			newType = FUNC4(sizeof(sdlType));
			FUNC7(newType, 0, sizeof(sdlType));

			if (sdl->groups == NULL) {
				sdl->groups = FUNC4(sizeof(HashTable));
				FUNC22(sdl->groups, 0, NULL, delete_type, 0);
			}
			if (FUNC21(sdl->groups, key.s, newType) == NULL) {
				FUNC19(E_ERROR, "Parsing Schema: group '%s' already defined", FUNC2(key.s));
			}

			cur_type = newType;
		}
		FUNC17(&key);

		if (model == NULL) {
			cur_type->model = newModel;
		} else {
			FUNC23(model->u.content, newModel);
		}
	} else {
		FUNC18(E_ERROR, "Parsing Schema: group has no 'name' nor 'ref' attributes");
	}

	FUNC12(groupType, newModel);

	trav = groupType->children;
	if (trav != NULL && FUNC8(trav,"annotation")) {
		/* TODO: <annotation> support */
		trav = trav->next;
	}
	if (trav != NULL) {
		if (FUNC8(trav,"choice")) {
			if (ref != NULL) {
				FUNC18(E_ERROR, "Parsing Schema: group has both 'ref' attribute and subcontent");
			}
			newModel->kind = XSD_CONTENT_CHOICE;
			FUNC11(sdl, tns, trav, cur_type, newModel);
			trav = trav->next;
		} else if (FUNC8(trav,"sequence")) {
			if (ref != NULL) {
				FUNC18(E_ERROR, "Parsing Schema: group has both 'ref' attribute and subcontent");
			}
			newModel->kind = XSD_CONTENT_SEQUENCE;
			FUNC13(sdl, tns, trav, cur_type, newModel);
			trav = trav->next;
		} else if (FUNC8(trav,"all")) {
			if (ref != NULL) {
				FUNC18(E_ERROR, "Parsing Schema: group has both 'ref' attribute and subcontent");
			}
			newModel->kind = XSD_CONTENT_ALL;
			FUNC10(sdl, tns, trav, cur_type, newModel);
			trav = trav->next;
		} else {
			FUNC19(E_ERROR, "Parsing Schema: unexpected <%s> in group", trav->name);
		}
	}
	if (trav != NULL) {
		FUNC19(E_ERROR, "Parsing Schema: unexpected <%s> in group", trav->name);
	}
	return TRUE;
}