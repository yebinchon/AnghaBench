#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* xmlNodePtr ;
typedef  TYPE_4__* xmlAttrPtr ;
typedef  TYPE_5__* sdlTypePtr ;
typedef  int /*<<< orphan*/  sdlType ;
typedef  TYPE_6__* sdlPtr ;
typedef  int /*<<< orphan*/  encode ;
struct TYPE_37__ {int /*<<< orphan*/ * types; int /*<<< orphan*/ * encoders; } ;
struct TYPE_32__ {TYPE_5__* sdl_type; void* type_str; void* ns; } ;
struct TYPE_36__ {char* name; char* namens; void* kind; int /*<<< orphan*/ * elements; struct TYPE_36__* encode; int /*<<< orphan*/  to_zval; int /*<<< orphan*/  to_xml; TYPE_1__ details; } ;
struct TYPE_35__ {TYPE_2__* children; } ;
struct TYPE_34__ {int /*<<< orphan*/  name; struct TYPE_34__* next; struct TYPE_34__* children; int /*<<< orphan*/  properties; } ;
struct TYPE_33__ {scalar_t__ content; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int TRUE ; 
 void* XSD_TYPEKIND_LIST ; 
 void* XSD_TYPEKIND_SIMPLE ; 
 void* XSD_TYPEKIND_UNION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,TYPE_5__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  delete_encoder ; 
 int /*<<< orphan*/  delete_type ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (char*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  sdl_guess_convert_xml ; 
 int /*<<< orphan*/  sdl_guess_convert_zval ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC13 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_5__* FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_5__*) ; 

__attribute__((used)) static int FUNC15(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr simpleType, sdlTypePtr cur_type)
{
	xmlNodePtr trav;
	xmlAttrPtr name, ns;

	ns = FUNC3(simpleType->properties, "targetNamespace");
	if (ns == NULL) {
		ns = tns;
	}

	name = FUNC3(simpleType->properties, "name");
	if (cur_type != NULL) {
		/* Anonymous type inside <element> or <restriction> */
		sdlTypePtr newType, ptr;

		newType = FUNC1(sizeof(sdlType));
		FUNC4(newType, 0, sizeof(sdlType));
		newType->kind = XSD_TYPEKIND_SIMPLE;
		if (name != NULL) {
			newType->name = FUNC2((char*)name->children->content);
			newType->namens = FUNC2((char*)ns->children->content);
		} else {
			newType->name = FUNC2(cur_type->name);
			newType->namens = FUNC2(cur_type->namens);
		}

		ptr = FUNC13(sdl->types,  newType);

		if (sdl->encoders == NULL) {
			sdl->encoders = FUNC1(sizeof(HashTable));
			FUNC12(sdl->encoders, 0, NULL, delete_encoder, 0);
		}
		cur_type->encode = FUNC1(sizeof(encode));
		FUNC4(cur_type->encode, 0, sizeof(encode));
		cur_type->encode->details.ns = FUNC2(newType->namens);
		cur_type->encode->details.type_str = FUNC2(newType->name);
		cur_type->encode->details.sdl_type = ptr;
		cur_type->encode->to_xml = sdl_guess_convert_xml;
		cur_type->encode->to_zval = sdl_guess_convert_zval;
		FUNC13(sdl->encoders,  cur_type->encode);

		cur_type =ptr;

	} else if (name != NULL) {
		sdlTypePtr newType, ptr;

		newType = FUNC1(sizeof(sdlType));
		FUNC4(newType, 0, sizeof(sdlType));
		newType->kind = XSD_TYPEKIND_SIMPLE;
		newType->name = FUNC2((char*)name->children->content);
		newType->namens = FUNC2((char*)ns->children->content);

		if (cur_type == NULL) {
			ptr = FUNC13(sdl->types, newType);
		} else {
			if (cur_type->elements == NULL) {
				cur_type->elements = FUNC1(sizeof(HashTable));
				FUNC12(cur_type->elements, 0, NULL, delete_type, 0);
			}
			ptr = FUNC14(cur_type->elements, newType->name, FUNC11(newType->name), newType);
		}
		cur_type = ptr;

		FUNC0(sdl, cur_type, ns->children->content, name->children->content);
	} else {
		FUNC9(E_ERROR, "Parsing Schema: simpleType has no 'name' attribute");
	}

	trav = simpleType->children;
	if (trav != NULL && FUNC5(trav,"annotation")) {
		/* TODO: <annotation> support */
		trav = trav->next;
	}
	if (trav != NULL) {
		if (FUNC5(trav,"restriction")) {
			FUNC7(sdl, tns, trav, cur_type, 1);
			trav = trav->next;
		} else if (FUNC5(trav,"list")) {
			cur_type->kind = XSD_TYPEKIND_LIST;
			FUNC6(sdl, tns, trav, cur_type);
			trav = trav->next;
		} else if (FUNC5(trav,"union")) {
			cur_type->kind = XSD_TYPEKIND_UNION;
			FUNC8(sdl, tns, trav, cur_type);
			trav = trav->next;
		} else {
			FUNC10(E_ERROR, "Parsing Schema: unexpected <%s> in simpleType", trav->name);
		}
	} else {
		FUNC9(E_ERROR, "Parsing Schema: expected <restriction>, <list> or <union> in simpleType");
	}
	if (trav != NULL) {
		FUNC10(E_ERROR, "Parsing Schema: unexpected <%s> in simpleType", trav->name);
	}

	return TRUE;
}