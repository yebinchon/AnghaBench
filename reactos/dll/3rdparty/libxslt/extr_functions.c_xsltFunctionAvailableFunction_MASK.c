#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* xmlXPathParserContextPtr ;
typedef  TYPE_3__* xmlXPathObjectPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_13__ {int /*<<< orphan*/  stringval; } ;
struct TYPE_12__ {int /*<<< orphan*/  context; int /*<<< orphan*/  error; TYPE_1__* value; } ;
struct TYPE_11__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPATH_INVALID_ARITY ; 
 int /*<<< orphan*/  XPATH_INVALID_TYPE ; 
 scalar_t__ XPATH_STRING ; 
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

void
FUNC12(xmlXPathParserContextPtr ctxt, int nargs){
    xmlXPathObjectPtr obj;
    xmlChar *prefix, *name;
    const xmlChar *nsURI = NULL;

    if (nargs != 1) {
	FUNC10(FUNC11(ctxt), NULL, NULL,
		"function-available() : expects one string arg\n");
	ctxt->error = XPATH_INVALID_ARITY;
	return;
    }
    FUNC9(ctxt, 1);
    if ((ctxt->value == NULL) || (ctxt->value->type != XPATH_STRING)) {
	FUNC10(FUNC11(ctxt), NULL, NULL,
	    "function-available() : invalid arg expecting a string\n");
	ctxt->error = XPATH_INVALID_TYPE;
	return;
    }
    obj = FUNC0(ctxt);

    name = FUNC3(obj->stringval, &prefix);
    if (name == NULL) {
	name = FUNC4(obj->stringval);
    } else {
	nsURI = FUNC8(ctxt->context, prefix);
	if (nsURI == NULL) {
	    FUNC10(FUNC11(ctxt), NULL, NULL,
		"function-available() : prefix %s is not bound\n", prefix);
	}
    }

    if (FUNC6(ctxt->context, name, nsURI) != NULL) {
	FUNC1(ctxt, FUNC7(1));
    } else {
	FUNC1(ctxt, FUNC7(0));
    }

    FUNC5(obj);
    if (name != NULL)
	FUNC2(name);
    if (prefix != NULL)
	FUNC2(prefix);
}