#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlNsPtr ;
typedef  TYPE_3__* xmlNodePtr ;
typedef  TYPE_4__* xmlAttrPtr ;
typedef  TYPE_5__* sdlTypePtr ;
typedef  int /*<<< orphan*/  sdlType ;
typedef  TYPE_6__* sdlPtr ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_28__ {int /*<<< orphan*/  types; } ;
struct TYPE_27__ {char* name; int /*<<< orphan*/ * elements; void* namens; int /*<<< orphan*/  encode; } ;
struct TYPE_26__ {TYPE_1__* children; } ;
struct TYPE_25__ {int /*<<< orphan*/  name; struct TYPE_25__* next; struct TYPE_25__* children; int /*<<< orphan*/  doc; int /*<<< orphan*/  properties; } ;
struct TYPE_24__ {scalar_t__ href; } ;
struct TYPE_23__ {scalar_t__ content; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  MAX_LENGTH_OF_LONG ; 
 int TRUE ; 
 int /*<<< orphan*/  delete_type ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (char*) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_5__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char**,char**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 char* FUNC17 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr listType, sdlTypePtr cur_type)
{
	xmlNodePtr trav;
	xmlAttrPtr itemType;

	itemType = FUNC4(listType->properties, "itemType");
	if (itemType != NULL) {
		char *type, *ns;
		xmlNsPtr nsptr;

		FUNC9(itemType->children->content, &type, &ns);
		nsptr = FUNC13(listType->doc, listType, FUNC0(ns));
		if (nsptr != NULL) {
			sdlTypePtr newType;

			newType = FUNC2(sizeof(sdlType));
			FUNC7(newType, 0, sizeof(sdlType));

			newType->name = FUNC3(type);
			newType->namens = FUNC3((char*)nsptr->href);

			newType->encode = FUNC5(sdl, newType, nsptr->href, FUNC0(type));

			if (cur_type->elements == NULL) {
				cur_type->elements = FUNC2(sizeof(HashTable));
				FUNC14(cur_type->elements, 0, NULL, delete_type, 0);
			}
			FUNC15(cur_type->elements, newType);
		}
		if (type) {FUNC1(type);}
		if (ns) {FUNC1(ns);}
	}

	trav = listType->children;
	if (trav != NULL && FUNC8(trav,"annotation")) {
		/* TODO: <annotation> support */
		trav = trav->next;
	}
	if (trav != NULL && FUNC8(trav,"simpleType")) {
		sdlTypePtr newType;

		if (itemType != NULL) {
			FUNC11(E_ERROR, "Parsing Schema: element has both 'itemType' attribute and subtype");
		}

		newType = FUNC2(sizeof(sdlType));
		FUNC7(newType, 0, sizeof(sdlType));

		{
			char buf[MAX_LENGTH_OF_LONG + 1];
			char *res = FUNC17(buf + sizeof(buf) - 1, FUNC16(sdl->types));
			char *str = FUNC2(sizeof("anonymous")-1 + (buf + sizeof(buf) - res));

			FUNC6(str, "anonymous", sizeof("anonymous")-1);
			FUNC6(str + sizeof("anonymous")-1, res, buf + sizeof(buf) - res);
			newType->name = str;
		}
		newType->namens = FUNC3((char*)tns->children->content);

		if (cur_type->elements == NULL) {
			cur_type->elements = FUNC2(sizeof(HashTable));
			FUNC14(cur_type->elements, 0, NULL, delete_type, 0);
		}
		FUNC15(cur_type->elements, newType);

		FUNC10(sdl, tns, trav, newType);

		trav = trav->next;
	}
	if (trav != NULL) {
		FUNC12(E_ERROR, "Parsing Schema: unexpected <%s> in list", trav->name);
	}
	return TRUE;
}