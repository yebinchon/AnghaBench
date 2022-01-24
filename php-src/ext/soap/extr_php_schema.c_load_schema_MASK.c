#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_7__ ;
typedef  struct TYPE_41__   TYPE_4__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_1__ ;
typedef  struct TYPE_37__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_2__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  TYPE_3__* xmlAttrPtr ;
struct TYPE_41__ {TYPE_10__* sdl; void* attributeGroups; void* attributes; } ;
typedef  TYPE_4__ sdlCtx ;
struct TYPE_42__ {int /*<<< orphan*/ * URL; } ;
struct TYPE_40__ {TYPE_1__* children; } ;
struct TYPE_39__ {struct TYPE_39__* next; int /*<<< orphan*/  name; TYPE_7__* doc; int /*<<< orphan*/  properties; struct TYPE_39__* children; } ;
struct TYPE_38__ {int /*<<< orphan*/  content; } ;
struct TYPE_37__ {void* types; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  delete_attribute ; 
 int /*<<< orphan*/  delete_type ; 
 void* FUNC1 (int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_10__*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_10__*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_10__*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_7__*,TYPE_2__*) ; 
 TYPE_3__* FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC20(sdlCtx *ctx, xmlNodePtr schema)
{
	xmlNodePtr trav;
	xmlAttrPtr tns;

	if (!ctx->sdl->types) {
		ctx->sdl->types = FUNC1(sizeof(HashTable));
		FUNC19(ctx->sdl->types, 0, NULL, delete_type, 0);
	}
	if (!ctx->attributes) {
		ctx->attributes = FUNC1(sizeof(HashTable));
		FUNC19(ctx->attributes, 0, NULL, delete_attribute, 0);
	}
	if (!ctx->attributeGroups) {
		ctx->attributeGroups = FUNC1(sizeof(HashTable));
		FUNC19(ctx->attributeGroups, 0, NULL, delete_type, 0);
	}

	tns = FUNC2(schema->properties, "targetNamespace");
	if (tns == NULL) {
		tns = FUNC17(schema, FUNC0("targetNamespace"), FUNC0(""));
		FUNC15(schema, FUNC0(""), NULL);
	}

	trav = schema->children;
	while (trav != NULL) {
		if (FUNC3(trav,"include")) {
			xmlAttrPtr location;

			location = FUNC2(trav->properties, "schemaLocation");
			if (location == NULL) {
				FUNC11(E_ERROR, "Parsing Schema: include has no 'schemaLocation' attribute");
			} else {
				xmlChar *uri;
				xmlChar *base = FUNC16(trav->doc, trav);

				if (base == NULL) {
			    uri = FUNC13(location->children->content, trav->doc->URL);
				} else {
	    		uri = FUNC13(location->children->content, base);
			    FUNC14(base);
				}
				FUNC9(ctx, NULL, uri, tns, 0);
				FUNC14(uri);
			}

		} else if (FUNC3(trav,"redefine")) {
			xmlAttrPtr location;

			location = FUNC2(trav->properties, "schemaLocation");
			if (location == NULL) {
				FUNC11(E_ERROR, "Parsing Schema: redefine has no 'schemaLocation' attribute");
			} else {
			  xmlChar *uri;
				xmlChar *base = FUNC16(trav->doc, trav);

				if (base == NULL) {
			    uri = FUNC13(location->children->content, trav->doc->URL);
				} else {
	    		uri = FUNC13(location->children->content, base);
			    FUNC14(base);
				}
				FUNC9(ctx, NULL, uri, tns, 0);
				FUNC14(uri);
				/* TODO: <redefine> support */
			}

		} else if (FUNC3(trav,"import")) {
			xmlAttrPtr ns, location;
			xmlChar *uri = NULL;

			ns = FUNC2(trav->properties, "namespace");
			location = FUNC2(trav->properties, "schemaLocation");

			if (ns != NULL && tns != NULL && FUNC18(ns->children->content, tns->children->content) == 0) {
				if (location) {
					FUNC12(E_ERROR, "Parsing Schema: can't import schema from '%s', namespace must not match the enclosing schema 'targetNamespace'", location->children->content);
				} else {
					FUNC11(E_ERROR, "Parsing Schema: can't import schema. Namespace must not match the enclosing schema 'targetNamespace'");
				}
			}
			if (location) {
				xmlChar *base = FUNC16(trav->doc, trav);

				if (base == NULL) {
			    uri = FUNC13(location->children->content, trav->doc->URL);
				} else {
	    		uri = FUNC13(location->children->content, base);
			    FUNC14(base);
				}
			}
			FUNC9(ctx, ns, uri, tns, 1);
			if (uri != NULL) {FUNC14(uri);}
		} else if (FUNC3(trav,"annotation")) {
			/* TODO: <annotation> support */
/* annotation cleanup
			xmlNodePtr tmp = trav;
			trav = trav->next;
			xmlUnlinkNode(tmp);
			xmlFreeNode(tmp);
			continue;
*/
		} else {
			break;
		}
		trav = trav->next;
	}

	while (trav != NULL) {
		if (FUNC3(trav,"simpleType")) {
			FUNC10(ctx->sdl, tns, trav, NULL);
		} else if (FUNC3(trav,"complexType")) {
			FUNC6(ctx->sdl, tns, trav, NULL);
		} else if (FUNC3(trav,"group")) {
			FUNC8(ctx->sdl, tns, trav, NULL, NULL);
		} else if (FUNC3(trav,"attributeGroup")) {
			FUNC5(ctx->sdl, tns, trav, NULL, ctx);
		} else if (FUNC3(trav,"element")) {
			FUNC7(ctx->sdl, tns, trav, NULL, NULL);
		} else if (FUNC3(trav,"attribute")) {
			FUNC4(ctx->sdl, tns, trav, NULL, ctx);
		} else if (FUNC3(trav,"notation")) {
			/* TODO: <notation> support */
		} else if (FUNC3(trav,"annotation")) {
			/* TODO: <annotation> support */
		} else {
			FUNC12(E_ERROR, "Parsing Schema: unexpected <%s> in schema", trav->name);
		}
		trav = trav->next;
	}
	return TRUE;
}