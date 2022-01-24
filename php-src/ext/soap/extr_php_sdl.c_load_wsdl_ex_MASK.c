#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  TYPE_2__* xmlNodePtr ;
typedef  TYPE_3__* xmlErrorPtr ;
typedef  TYPE_2__* xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  TYPE_5__* xmlAttrPtr ;
typedef  TYPE_6__* sdlPtr ;
struct TYPE_29__ {int /*<<< orphan*/  services; int /*<<< orphan*/  bindings; int /*<<< orphan*/  portTypes; int /*<<< orphan*/  messages; int /*<<< orphan*/  docs; TYPE_6__* sdl; } ;
typedef  TYPE_7__ sdlCtx ;
struct TYPE_30__ {int /*<<< orphan*/ * URL; } ;
struct TYPE_28__ {int /*<<< orphan*/  target_ns; } ;
struct TYPE_27__ {TYPE_1__* children; } ;
struct TYPE_26__ {int /*<<< orphan*/  message; } ;
struct TYPE_25__ {char* name; struct TYPE_25__* next; int /*<<< orphan*/  properties; TYPE_9__* doc; struct TYPE_25__* children; } ;
struct TYPE_24__ {char* content; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  WSDL_NAMESPACE ; 
 int /*<<< orphan*/  XSD_NAMESPACE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/ * FUNC14 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC16 () ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_9__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC21(zval *this_ptr, char *struri, sdlCtx *ctx, int include)
{
	sdlPtr tmpsdl = ctx->sdl;
	xmlDocPtr wsdl;
	xmlNodePtr root, definitions, trav;
	xmlAttrPtr targetNamespace;

	if (FUNC20(&ctx->docs, struri, FUNC13(struri))) {
		return;
	}

	FUNC8(ctx, struri);
	wsdl = FUNC12(struri);
	FUNC7(ctx);

	if (!wsdl) {
		xmlErrorPtr xmlErrorPtr = FUNC16();

		if (xmlErrorPtr) {
			FUNC11(E_ERROR, "Parsing WSDL: Couldn't load from '%s' : %s", struri, xmlErrorPtr->message);
		} else {
			FUNC10(E_ERROR, "Parsing WSDL: Couldn't load from '%s'", struri);
		}
	}

	FUNC19(&ctx->docs, struri, FUNC13(struri), wsdl);

	root = wsdl->children;
	definitions = FUNC2(root, "definitions", WSDL_NAMESPACE);
	if (!definitions) {
		if (include) {
			xmlNodePtr schema = FUNC2(root, "schema", XSD_NAMESPACE);
			if (schema) {
				FUNC4(ctx, schema);
				return;
			}
		}
		FUNC10(E_ERROR, "Parsing WSDL: Couldn't find <definitions> in '%s'", struri);
	}

	if (!include) {
		targetNamespace = FUNC1(definitions->properties, "targetNamespace");
		if (targetNamespace) {
			tmpsdl->target_ns = FUNC0((char*)targetNamespace->children->content);
		}
	}

	trav = definitions->children;
	while (trav != NULL) {
		if (!FUNC3(trav)) {
			trav = trav->next;
			continue;
		}
		if (FUNC5(trav,"types")) {
			/* TODO: Only one "types" is allowed */
			xmlNodePtr trav2 = trav->children;

			while (trav2 != NULL) {
				if (FUNC6(trav2, "schema", XSD_NAMESPACE)) {
					FUNC4(ctx, trav2);
				} else if (FUNC3(trav2) && !FUNC5(trav2,"documentation")) {
					FUNC10(E_ERROR, "Parsing WSDL: Unexpected WSDL element <%s>", trav2->name);
				}
				trav2 = trav2->next;
			}
		} else if (FUNC5(trav,"import")) {
			/* TODO: namespace ??? */
			xmlAttrPtr tmp = FUNC1(trav->properties, "location");
			if (tmp) {
				xmlChar *uri;
				xmlChar *base = FUNC17(trav->doc, trav);

				if (base == NULL) {
					uri = FUNC14(tmp->children->content, trav->doc->URL);
				} else {
					uri = FUNC14(tmp->children->content, base);
					FUNC15(base);
				}
				FUNC21(this_ptr, (char*)uri, ctx, 1);
				FUNC15(uri);
			}

		} else if (FUNC5(trav,"message")) {
			xmlAttrPtr name = FUNC1(trav->properties, "name");
			if (name && name->children && name->children->content) {
				if (FUNC19(&ctx->messages, (char*)name->children->content, FUNC18(name->children->content), trav) == NULL) {
					FUNC10(E_ERROR, "Parsing WSDL: <message> '%s' already defined", name->children->content);
				}
			} else {
				FUNC9(E_ERROR, "Parsing WSDL: <message> has no name attribute");
			}

		} else if (FUNC5(trav,"portType")) {
			xmlAttrPtr name = FUNC1(trav->properties, "name");
			if (name && name->children && name->children->content) {
				if (FUNC19(&ctx->portTypes, (char*)name->children->content, FUNC18(name->children->content), trav) == NULL) {
					FUNC10(E_ERROR, "Parsing WSDL: <portType> '%s' already defined", name->children->content);
				}
			} else {
				FUNC9(E_ERROR, "Parsing WSDL: <portType> has no name attribute");
			}

		} else if (FUNC5(trav,"binding")) {
			xmlAttrPtr name = FUNC1(trav->properties, "name");
			if (name && name->children && name->children->content) {
				if (FUNC19(&ctx->bindings, (char*)name->children->content, FUNC18(name->children->content), trav) == NULL) {
					FUNC10(E_ERROR, "Parsing WSDL: <binding> '%s' already defined", name->children->content);
				}
			} else {
				FUNC9(E_ERROR, "Parsing WSDL: <binding> has no name attribute");
			}

		} else if (FUNC5(trav,"service")) {
			xmlAttrPtr name = FUNC1(trav->properties, "name");
			if (name && name->children && name->children->content) {
				if (FUNC19(&ctx->services, (char*)name->children->content, FUNC18(name->children->content), trav) == NULL) {
					FUNC10(E_ERROR, "Parsing WSDL: <service> '%s' already defined", name->children->content);
				}
			} else {
				FUNC9(E_ERROR, "Parsing WSDL: <service> has no name attribute");
			}
		} else if (!FUNC5(trav,"documentation")) {
			FUNC10(E_ERROR, "Parsing WSDL: Unexpected WSDL element <%s>", trav->name);
		}
		trav = trav->next;
	}
}