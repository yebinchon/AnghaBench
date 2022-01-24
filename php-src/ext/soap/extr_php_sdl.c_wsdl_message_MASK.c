#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;

/* Type definitions */
typedef  TYPE_3__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  TYPE_4__* xmlAttrPtr ;
typedef  TYPE_5__* sdlParamPtr ;
typedef  int /*<<< orphan*/  sdlParam ;
struct TYPE_22__ {int /*<<< orphan*/  sdl; int /*<<< orphan*/  messages; } ;
typedef  TYPE_6__ sdlCtx ;
struct TYPE_21__ {TYPE_13__* element; int /*<<< orphan*/  encode; int /*<<< orphan*/  paramName; scalar_t__ order; } ;
struct TYPE_20__ {TYPE_2__* children; } ;
struct TYPE_19__ {struct TYPE_19__* next; int /*<<< orphan*/  properties; int /*<<< orphan*/ * name; TYPE_1__* ns; struct TYPE_19__* children; } ;
struct TYPE_18__ {scalar_t__ content; } ;
struct TYPE_17__ {scalar_t__ href; } ;
struct TYPE_16__ {int /*<<< orphan*/  encode; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  E_ERROR ; 
 int /*<<< orphan*/  WSDL_NAMESPACE ; 
 int /*<<< orphan*/  delete_parameter ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_13__* FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*,char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HashTable* FUNC14(sdlCtx *ctx, xmlChar* message_name)
{
	xmlNodePtr trav, part, message = NULL, tmp;
	HashTable* parameters = NULL;
	char *ctype;

	ctype = FUNC10((char*)message_name,':');
	if (ctype == NULL) {
		ctype = (char*)message_name;
	} else {
		++ctype;
	}
	if ((tmp = FUNC13(&ctx->messages, ctype, FUNC9(ctype))) == NULL) {
		FUNC7(E_ERROR, "Parsing WSDL: Missing <message> with name '%s'", message_name);
	}
	message = tmp;

	parameters = FUNC0(sizeof(HashTable));
	FUNC11(parameters, 0, NULL, delete_parameter, 0);

	trav = message->children;
	while (trav != NULL) {
		xmlAttrPtr element, type, name;
		sdlParamPtr param;

		if (trav->ns != NULL && FUNC8((char*)trav->ns->href, WSDL_NAMESPACE) != 0) {
			FUNC7(E_ERROR, "Parsing WSDL: Unexpected extensibility element <%s>", trav->name);
		}
		if (FUNC6(trav,"documentation")) {
			trav = trav->next;
			continue;
		}
		if (!FUNC6(trav,"part")) {
			FUNC7(E_ERROR, "Parsing WSDL: Unexpected WSDL element <%s>", trav->name);
		}
		part = trav;
		param = FUNC0(sizeof(sdlParam));
		FUNC5(param,0,sizeof(sdlParam));
		param->order = 0;

		name = FUNC2(part->properties, "name");
		if (name == NULL) {
			FUNC7(E_ERROR, "Parsing WSDL: No name associated with <part> '%s'", message->name);
		}

		param->paramName = FUNC1((char*)name->children->content);

		type = FUNC2(part->properties, "type");
		if (type != NULL) {
			param->encode = FUNC4(ctx->sdl, part, type->children->content);
		} else {
			element = FUNC2(part->properties, "element");
			if (element != NULL) {
				param->element = FUNC3(ctx->sdl, part, element->children->content);
				if (param->element) {
					param->encode = param->element->encode;
				}
			}
		}

		FUNC12(parameters, param);

		trav = trav->next;
	}
	return parameters;
}