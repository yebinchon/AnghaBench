#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
typedef  int /*<<< orphan*/  xsltStylesheetPtr ;
typedef  int /*<<< orphan*/ * xmlNodePtr ;
typedef  int /*<<< orphan*/  (* xmlGenericErrorFunc ) (void*,char*,char*) ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/ * inst; void* errctx; int /*<<< orphan*/  (* error ) (void*,char*,char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 scalar_t__ XSLT_STATE_ERROR ; 
 scalar_t__ XSLT_STATE_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,char*) ; 
 void* xsltGenericErrorContext ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC4(xsltTransformContextPtr ctxt,
		   xsltStylesheetPtr style,
		   xmlNodePtr node,
		   const char *msg, ...) {
    xmlGenericErrorFunc error = xsltGenericError;
    void *errctx = xsltGenericErrorContext;
    char * str;

    if (ctxt != NULL) {
        if (ctxt->state == XSLT_STATE_OK)
	    ctxt->state = XSLT_STATE_ERROR;
	if (ctxt->error != NULL) {
	    error = ctxt->error;
	    errctx = ctxt->errctx;
	}
    }
    if ((node == NULL) && (ctxt != NULL))
	node = ctxt->inst;
    FUNC3(ctxt, style, node);
    FUNC0(msg, str);
    error(errctx, "%s", str);
    if (str != NULL)
	FUNC1(str);
}