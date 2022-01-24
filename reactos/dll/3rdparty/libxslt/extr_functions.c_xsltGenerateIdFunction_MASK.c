#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* xmlXPathParserContextPtr ;
typedef  TYPE_4__* xmlXPathObjectPtr ;
typedef  TYPE_5__* xmlNodeSetPtr ;
typedef  int /*<<< orphan*/ * xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  int /*<<< orphan*/  str ;
struct TYPE_16__ {int nodeNr; int /*<<< orphan*/ ** nodeTab; } ;
struct TYPE_15__ {TYPE_5__* nodesetval; } ;
struct TYPE_14__ {int /*<<< orphan*/  error; TYPE_2__* value; TYPE_1__* context; } ;
struct TYPE_13__ {scalar_t__ type; } ;
struct TYPE_12__ {int /*<<< orphan*/ * node; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPATH_INVALID_ARITY ; 
 int /*<<< orphan*/  XPATH_INVALID_TYPE ; 
 scalar_t__ XPATH_NODESET ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,long) ; 
 TYPE_4__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

void
FUNC9(xmlXPathParserContextPtr ctxt, int nargs){
    static char base_address;
    xmlNodePtr cur = NULL;
    xmlXPathObjectPtr obj = NULL;
    long val;
    xmlChar str[30];

    if (nargs == 0) {
	cur = ctxt->context->node;
    } else if (nargs == 1) {
	xmlNodeSetPtr nodelist;
	int i, ret;

	if ((ctxt->value == NULL) || (ctxt->value->type != XPATH_NODESET)) {
	    ctxt->error = XPATH_INVALID_TYPE;
	    FUNC7(FUNC8(ctxt), NULL, NULL,
		"generate-id() : invalid arg expecting a node-set\n");
	    return;
	}
	obj = FUNC1(ctxt);
	nodelist = obj->nodesetval;
	if ((nodelist == NULL) || (nodelist->nodeNr <= 0)) {
	    FUNC4(obj);
	    FUNC2(ctxt, FUNC5(""));
	    return;
	}
	cur = nodelist->nodeTab[0];
	for (i = 1;i < nodelist->nodeNr;i++) {
	    ret = FUNC3(cur, nodelist->nodeTab[i]);
	    if (ret == -1)
	        cur = nodelist->nodeTab[i];
	}
    } else {
	FUNC7(FUNC8(ctxt), NULL, NULL,
		"generate-id() : invalid number of args %d\n", nargs);
	ctxt->error = XPATH_INVALID_ARITY;
	return;
    }

    if (obj)
        FUNC4(obj);

    val = (long)((char *)cur - (char *)&base_address);
    if (val >= 0) {
      FUNC0((char *)str, sizeof(str), "idp%ld", val);
    } else {
      FUNC0((char *)str, sizeof(str), "idm%ld", -val);
    }
    FUNC2(ctxt, FUNC6(str));
}