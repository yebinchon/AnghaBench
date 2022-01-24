#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlXPathParserContextPtr ;
typedef  TYPE_3__* xmlXPathObjectPtr ;
typedef  TYPE_4__* xmlEntityPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_16__ {int /*<<< orphan*/  const* URI; } ;
struct TYPE_15__ {scalar_t__ type; int /*<<< orphan*/ * stringval; } ;
struct TYPE_14__ {TYPE_1__* context; int /*<<< orphan*/  error; int /*<<< orphan*/ * value; } ;
struct TYPE_13__ {int /*<<< orphan*/  doc; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPATH_INVALID_ARITY ; 
 scalar_t__ XPATH_STRING ; 
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xsltGenericErrorContext ; 

void
FUNC7(xmlXPathParserContextPtr ctxt, int nargs){
    xmlXPathObjectPtr obj;
    xmlChar *str;

    if ((nargs != 1) || (ctxt->value == NULL)) {
        FUNC6(xsltGenericErrorContext,
		"unparsed-entity-uri() : expects one string arg\n");
	ctxt->error = XPATH_INVALID_ARITY;
	return;
    }
    obj = FUNC0(ctxt);
    if (obj->type != XPATH_STRING) {
	obj = FUNC3(obj);
    }

    str = obj->stringval;
    if (str == NULL) {
	FUNC1(ctxt, FUNC5((const xmlChar *)""));
    } else {
	xmlEntityPtr entity;

	entity = FUNC2(ctxt->context->doc, str);
	if (entity == NULL) {
	    FUNC1(ctxt, FUNC5((const xmlChar *)""));
	} else {
	    if (entity->URI != NULL)
		FUNC1(ctxt, FUNC5(entity->URI));
	    else
		FUNC1(ctxt, FUNC5((const xmlChar *)""));
	}
    }
    FUNC4(obj);
}