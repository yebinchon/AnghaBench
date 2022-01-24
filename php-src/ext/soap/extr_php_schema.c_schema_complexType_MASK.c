#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_56__   TYPE_6__ ;
typedef  struct TYPE_55__   TYPE_5__ ;
typedef  struct TYPE_54__   TYPE_4__ ;
typedef  struct TYPE_53__   TYPE_3__ ;
typedef  struct TYPE_52__   TYPE_2__ ;
typedef  struct TYPE_51__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* xmlNodePtr ;
typedef  TYPE_4__* xmlAttrPtr ;
typedef  TYPE_5__* sdlTypePtr ;
typedef  int /*<<< orphan*/  sdlType ;
typedef  TYPE_6__* sdlPtr ;
typedef  int /*<<< orphan*/  encode ;
struct TYPE_56__ {int /*<<< orphan*/ * types; int /*<<< orphan*/ * encoders; } ;
struct TYPE_51__ {TYPE_5__* sdl_type; void* type_str; void* ns; } ;
struct TYPE_55__ {char* name; char* namens; void* kind; struct TYPE_55__* encode; int /*<<< orphan*/  to_zval; int /*<<< orphan*/  to_xml; TYPE_1__ details; } ;
struct TYPE_54__ {TYPE_2__* children; } ;
struct TYPE_53__ {int /*<<< orphan*/  name; struct TYPE_53__* next; struct TYPE_53__* children; TYPE_4__* properties; } ;
struct TYPE_52__ {scalar_t__ content; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int FALSE ; 
 int TRUE ; 
 void* XSD_TYPEKIND_COMPLEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,TYPE_5__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  delete_encoder ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (char*) ; 
 TYPE_4__* FUNC3 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  sdl_guess_convert_xml ; 
 int /*<<< orphan*/  sdl_guess_convert_zval ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC17 (int /*<<< orphan*/ *,TYPE_5__*) ; 

__attribute__((used)) static int FUNC18(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr compType, sdlTypePtr cur_type)
{
	xmlNodePtr trav;
	xmlAttrPtr attrs, name, ns;

	attrs = compType->properties;
	ns = FUNC3(attrs, "targetNamespace");
	if (ns == NULL) {
		ns = tns;
	}

	name = FUNC3(attrs, "name");
	if (cur_type != NULL) {
		/* Anonymous type inside <element> */
		sdlTypePtr newType, ptr;

		newType = FUNC1(sizeof(sdlType));
		FUNC4(newType, 0, sizeof(sdlType));
		newType->kind = XSD_TYPEKIND_COMPLEX;
		if (name != NULL) {
			newType->name = FUNC2((char*)name->children->content);
			newType->namens = FUNC2((char*)ns->children->content);
		} else {
			newType->name = FUNC2(cur_type->name);
			newType->namens = FUNC2(cur_type->namens);
		}

		ptr = FUNC17(sdl->types, newType);

		if (sdl->encoders == NULL) {
			sdl->encoders = FUNC1(sizeof(HashTable));
			FUNC16(sdl->encoders, 0, NULL, delete_encoder, 0);
		}
		cur_type->encode = FUNC1(sizeof(encode));
		FUNC4(cur_type->encode, 0, sizeof(encode));
		cur_type->encode->details.ns = FUNC2(newType->namens);
		cur_type->encode->details.type_str = FUNC2(newType->name);
		cur_type->encode->details.sdl_type = ptr;
		cur_type->encode->to_xml = sdl_guess_convert_xml;
		cur_type->encode->to_zval = sdl_guess_convert_zval;
		FUNC17(sdl->encoders, cur_type->encode);

		cur_type = ptr;

	} else if (name) {
		sdlTypePtr newType, ptr;

		newType = FUNC1(sizeof(sdlType));
		FUNC4(newType, 0, sizeof(sdlType));
		newType->kind = XSD_TYPEKIND_COMPLEX;
		newType->name = FUNC2((char*)name->children->content);
		newType->namens = FUNC2((char*)ns->children->content);

		ptr = FUNC17(sdl->types, newType);

		cur_type = ptr;
		FUNC0(sdl, cur_type, ns->children->content, name->children->content);
	} else {
		FUNC14(E_ERROR, "Parsing Schema: complexType has no 'name' attribute");
		return FALSE;
	}

	trav = compType->children;
	if (trav != NULL && FUNC5(trav, "annotation")) {
		/* TODO: <annotation> support */
		trav = trav->next;
	}
	if (trav != NULL) {
		if (FUNC5(trav,"simpleContent")) {
			FUNC13(sdl, tns, trav, cur_type);
			trav = trav->next;
		} else if (FUNC5(trav,"complexContent")) {
			FUNC10(sdl, tns, trav, cur_type);
			trav = trav->next;
		} else {
			if (FUNC5(trav,"group")) {
				FUNC11(sdl, tns, trav, cur_type, NULL);
				trav = trav->next;
			} else if (FUNC5(trav,"all")) {
				FUNC6(sdl, tns, trav, cur_type, NULL);
				trav = trav->next;
			} else if (FUNC5(trav,"choice")) {
				FUNC9(sdl, tns, trav, cur_type, NULL);
				trav = trav->next;
			} else if (FUNC5(trav,"sequence")) {
				FUNC12(sdl, tns, trav, cur_type, NULL);
				trav = trav->next;
			}
			while (trav != NULL) {
				if (FUNC5(trav,"attribute")) {
					FUNC7(sdl, tns, trav, cur_type, NULL);
				} else if (FUNC5(trav,"attributeGroup")) {
					FUNC8(sdl, tns, trav, cur_type, NULL);
				} else if (FUNC5(trav,"anyAttribute")) {
					/* TODO: <anyAttribute> support */
					trav = trav->next;
					break;
				} else {
					FUNC15(E_ERROR, "Parsing Schema: unexpected <%s> in complexType", trav->name);
				}
				trav = trav->next;
			}
		}
	}
	if (trav != NULL) {
		FUNC15(E_ERROR, "Parsing Schema: unexpected <%s> in complexType", trav->name);
	}
	return TRUE;
}