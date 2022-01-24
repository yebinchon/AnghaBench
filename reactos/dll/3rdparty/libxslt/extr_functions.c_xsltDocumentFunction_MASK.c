#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_7__ ;
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_22__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_16__ ;

/* Type definitions */
typedef  TYPE_3__* xsltTransformContextPtr ;
typedef  TYPE_4__* xmlXPathParserContextPtr ;
typedef  TYPE_5__* xmlXPathObjectPtr ;
typedef  TYPE_6__* xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  TYPE_7__* xmlAttrPtr ;
struct TYPE_37__ {TYPE_6__* parent; } ;
struct TYPE_36__ {scalar_t__ type; TYPE_22__* doc; } ;
struct TYPE_35__ {int /*<<< orphan*/ * stringval; TYPE_16__* nodesetval; } ;
struct TYPE_34__ {void* error; TYPE_1__* value; } ;
struct TYPE_33__ {TYPE_2__* style; TYPE_6__* inst; } ;
struct TYPE_32__ {TYPE_22__* doc; } ;
struct TYPE_31__ {int /*<<< orphan*/  URL; } ;
struct TYPE_30__ {scalar_t__ type; } ;
struct TYPE_29__ {int nodeNr; TYPE_6__** nodeTab; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 scalar_t__ XML_ATTRIBUTE_NODE ; 
 scalar_t__ XML_PI_NODE ; 
 void* XPATH_INVALID_ARITY ; 
 void* XPATH_INVALID_TYPE ; 
 scalar_t__ XPATH_NODESET ; 
 scalar_t__ XPATH_STRING ; 
 TYPE_5__* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_22__*,TYPE_6__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 TYPE_5__* FUNC8 (TYPE_6__*) ; 
 TYPE_16__* FUNC9 (TYPE_16__*,TYPE_16__*) ; 
 TYPE_5__* FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,...) ; 
 TYPE_3__* FUNC14 (TYPE_4__*) ; 

void
FUNC15(xmlXPathParserContextPtr ctxt, int nargs)
{
    xmlXPathObjectPtr obj, obj2 = NULL;
    xmlChar *base = NULL, *URI;


    if ((nargs < 1) || (nargs > 2)) {
        FUNC13(FUNC14(ctxt), NULL, NULL,
                         "document() : invalid number of args %d\n",
                         nargs);
        ctxt->error = XPATH_INVALID_ARITY;
        return;
    }
    if (ctxt->value == NULL) {
        FUNC13(FUNC14(ctxt), NULL, NULL,
                         "document() : invalid arg value\n");
        ctxt->error = XPATH_INVALID_TYPE;
        return;
    }

    if (nargs == 2) {
        if (ctxt->value->type != XPATH_NODESET) {
            FUNC13(FUNC14(ctxt), NULL, NULL,
                             "document() : invalid arg expecting a nodeset\n");
            ctxt->error = XPATH_INVALID_TYPE;
            return;
        }

        obj2 = FUNC1(ctxt);
    }

    if (ctxt->value->type == XPATH_NODESET) {
        int i;
        xmlXPathObjectPtr newobj, ret;

        obj = FUNC1(ctxt);
        ret = FUNC8(NULL);

        if ((obj != NULL) && obj->nodesetval) {
            for (i = 0; i < obj->nodesetval->nodeNr; i++) {
                FUNC2(ctxt,
                          FUNC8(obj->nodesetval->nodeTab[i]));
                FUNC11(ctxt, 1);
                if (nargs == 2) {
                    FUNC2(ctxt, FUNC10(obj2));
                } else {
                    FUNC2(ctxt,
                              FUNC8(obj->nodesetval->
                                                 nodeTab[i]));
                }
                FUNC15(ctxt, 2);
                newobj = FUNC1(ctxt);
                ret->nodesetval = FUNC9(ret->nodesetval,
                                                       newobj->nodesetval);
                FUNC7(newobj);
            }
        }

        if (obj != NULL)
            FUNC7(obj);
        if (obj2 != NULL)
            FUNC7(obj2);
        FUNC2(ctxt, ret);
        return;
    }
    /*
     * Make sure it's converted to a string
     */
    FUNC11(ctxt, 1);
    if (ctxt->value->type != XPATH_STRING) {
        FUNC13(FUNC14(ctxt), NULL, NULL,
                         "document() : invalid arg expecting a string\n");
        ctxt->error = XPATH_INVALID_TYPE;
        if (obj2 != NULL)
            FUNC7(obj2);
        return;
    }
    obj = FUNC1(ctxt);
    if (obj->stringval == NULL) {
        FUNC2(ctxt, FUNC8(NULL));
    } else {
        xsltTransformContextPtr tctxt;
        tctxt = FUNC14(ctxt);
        if ((obj2 != NULL) && (obj2->nodesetval != NULL) &&
            (obj2->nodesetval->nodeNr > 0) &&
            FUNC0(obj2->nodesetval->nodeTab[0])) {
            xmlNodePtr target;

            target = obj2->nodesetval->nodeTab[0];
            if ((target->type == XML_ATTRIBUTE_NODE) ||
	        (target->type == XML_PI_NODE)) {
                target = ((xmlAttrPtr) target)->parent;
            }
            base = FUNC5(target->doc, target);
        } else {
            if ((tctxt != NULL) && (tctxt->inst != NULL)) {
                base = FUNC5(tctxt->inst->doc, tctxt->inst);
            } else if ((tctxt != NULL) && (tctxt->style != NULL) &&
                       (tctxt->style->doc != NULL)) {
                base = FUNC5(tctxt->style->doc,
                                      (xmlNodePtr) tctxt->style->doc);
            }
        }
        URI = FUNC3(obj->stringval, base);
        if (base != NULL)
            FUNC4(base);
        if (URI == NULL) {
            if ((tctxt != NULL) && (tctxt->style != NULL) &&
                (tctxt->style->doc != NULL) &&
                (FUNC6(URI, tctxt->style->doc->URL))) {
                /* This selects the stylesheet's doc itself. */
                FUNC2(ctxt, FUNC8((xmlNodePtr) tctxt->style->doc));
            } else {
                FUNC2(ctxt, FUNC8(NULL));
            }
        } else {
	    FUNC12( ctxt, URI );
	    FUNC4(URI);
	}
    }
    FUNC7(obj);
    if (obj2 != NULL)
        FUNC7(obj2);
}