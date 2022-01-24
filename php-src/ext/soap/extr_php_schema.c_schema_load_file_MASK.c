#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlNodePtr ;
typedef  TYPE_3__* xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  TYPE_4__* xmlAttrPtr ;
struct TYPE_23__ {int /*<<< orphan*/  docs; } ;
typedef  TYPE_5__ sdlCtx ;
struct TYPE_22__ {TYPE_1__* children; } ;
struct TYPE_21__ {int /*<<< orphan*/  children; } ;
struct TYPE_20__ {int /*<<< orphan*/  properties; } ;
struct TYPE_19__ {int /*<<< orphan*/  content; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E_ERROR ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(sdlCtx *ctx, xmlAttrPtr ns, xmlChar *location, xmlAttrPtr tns, int import) {
	if (location != NULL &&
	    !FUNC14(&ctx->docs, (char*)location, FUNC12(location))) {
		xmlDocPtr doc;
		xmlNodePtr schema;
		xmlAttrPtr new_tns;

		FUNC5(ctx, (char*)location);
		doc = FUNC8((char*)location);
		FUNC4(ctx);

		if (doc == NULL) {
			FUNC6(E_ERROR, "Parsing Schema: can't import schema from '%s'", location);
		}
		schema = FUNC2(doc->children, "schema");
		if (schema == NULL) {
			FUNC9(doc);
			FUNC6(E_ERROR, "Parsing Schema: can't import schema from '%s'", location);
		}
		new_tns = FUNC1(schema->properties, "targetNamespace");
		if (import) {
			if (ns != NULL && (new_tns == NULL || FUNC11(ns->children->content, new_tns->children->content) != 0)) {
				FUNC9(doc);
				FUNC7(E_ERROR, "Parsing Schema: can't import schema from '%s', unexpected 'targetNamespace'='%s'", location, ns->children->content);
			}
			if (ns == NULL && new_tns != NULL) {
				FUNC9(doc);
				FUNC7(E_ERROR, "Parsing Schema: can't import schema from '%s', unexpected 'targetNamespace'='%s'", location, new_tns->children->content);
			}
		} else {
			new_tns = FUNC1(schema->properties, "targetNamespace");
			if (new_tns == NULL) {
				if (tns != NULL) {
					FUNC10(schema, FUNC0("targetNamespace"), tns->children->content);
				}
			} else if (tns != NULL && FUNC11(tns->children->content, new_tns->children->content) != 0) {
				FUNC9(doc);
				FUNC6(E_ERROR, "Parsing Schema: can't include schema from '%s', different 'targetNamespace'", location);
			}
		}
		FUNC13(&ctx->docs, (char*)location, FUNC12(location), doc);
		FUNC3(ctx, schema);
	}
}