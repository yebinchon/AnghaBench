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
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
typedef  TYPE_2__* xsltTransformContextPtr ;
typedef  TYPE_3__* xmlXPathParserContextPtr ;
typedef  TYPE_4__* xmlXPathObjectPtr ;
typedef  TYPE_5__* xmlNsPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_23__ {int /*<<< orphan*/ * href; } ;
struct TYPE_22__ {int /*<<< orphan*/  stringval; } ;
struct TYPE_21__ {int /*<<< orphan*/  context; int /*<<< orphan*/  error; TYPE_1__* value; } ;
struct TYPE_20__ {TYPE_14__* inst; } ;
struct TYPE_19__ {scalar_t__ type; } ;
struct TYPE_18__ {int /*<<< orphan*/  doc; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPATH_INVALID_ARITY ; 
 int /*<<< orphan*/  XPATH_INVALID_TYPE ; 
 scalar_t__ XPATH_STRING ; 
 TYPE_4__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ,TYPE_14__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 TYPE_2__* FUNC12 (TYPE_3__*) ; 

void
FUNC13(xmlXPathParserContextPtr ctxt, int nargs){
    xmlXPathObjectPtr obj;
    xmlChar *prefix, *name;
    const xmlChar *nsURI = NULL;
    xsltTransformContextPtr tctxt;

    if (nargs != 1) {
	FUNC11(FUNC12(ctxt), NULL, NULL,
		"element-available() : expects one string arg\n");
	ctxt->error = XPATH_INVALID_ARITY;
	return;
    }
    FUNC9(ctxt, 1);
    if ((ctxt->value == NULL) || (ctxt->value->type != XPATH_STRING)) {
	FUNC11(FUNC12(ctxt), NULL, NULL,
	    "element-available() : invalid arg expecting a string\n");
	ctxt->error = XPATH_INVALID_TYPE;
	return;
    }
    obj = FUNC0(ctxt);
    tctxt = FUNC12(ctxt);
    if ((tctxt == NULL) || (tctxt->inst == NULL)) {
	FUNC11(FUNC12(ctxt), NULL, NULL,
		"element-available() : internal error tctxt == NULL\n");
	FUNC6(obj);
	FUNC1(ctxt, FUNC7(0));
	return;
    }


    name = FUNC4(obj->stringval, &prefix);
    if (name == NULL) {
	xmlNsPtr ns;

	name = FUNC5(obj->stringval);
	ns = FUNC3(tctxt->inst->doc, tctxt->inst, NULL);
	if (ns != NULL) nsURI = ns->href;
    } else {
	nsURI = FUNC8(ctxt->context, prefix);
	if (nsURI == NULL) {
	    FUNC11(FUNC12(ctxt), NULL, NULL,
		"element-available() : prefix %s is not bound\n", prefix);
	}
    }

    if (FUNC10(tctxt, name, nsURI) != NULL) {
	FUNC1(ctxt, FUNC7(1));
    } else {
	FUNC1(ctxt, FUNC7(0));
    }

    FUNC6(obj);
    if (name != NULL)
	FUNC2(name);
    if (prefix != NULL)
	FUNC2(prefix);
}