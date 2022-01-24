#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
typedef  TYPE_2__* xmlXPathParserContextPtr ;
struct TYPE_9__ {int /*<<< orphan*/  error; } ;
struct TYPE_8__ {int /*<<< orphan*/ * node; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPATH_INVALID_ARITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(xmlXPathParserContextPtr ctxt, int nargs){
    xsltTransformContextPtr tctxt;

    if (nargs != 0) {
	FUNC2(FUNC3(ctxt), NULL, NULL,
		"current() : function uses no argument\n");
	ctxt->error = XPATH_INVALID_ARITY;
	return;
    }
    tctxt = FUNC3(ctxt);
    if (tctxt == NULL) {
	FUNC2(FUNC3(ctxt), NULL, NULL,
		"current() : internal error tctxt == NULL\n");
	FUNC0(ctxt, FUNC1(NULL));
    } else {
	FUNC0(ctxt, FUNC1(tctxt->node)); /* current */
    }
}