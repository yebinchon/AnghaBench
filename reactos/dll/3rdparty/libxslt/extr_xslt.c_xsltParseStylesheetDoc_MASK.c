#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  int /*<<< orphan*/  xmlDocPtr ;
struct TYPE_6__ {int /*<<< orphan*/ * compCtxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

xsltStylesheetPtr
FUNC5(xmlDocPtr doc) {
    xsltStylesheetPtr ret;

    FUNC2();

    ret = FUNC3(doc, NULL);
    if (ret == NULL)
	return(NULL);

    FUNC4(ret);
#ifdef XSLT_REFACTORED
    /*
    * Free the compilation context.
    * TODO: Check if it's better to move this cleanup to
    *   xsltParseStylesheetImportedDoc().
    */
    if (ret->compCtxt != NULL) {
	xsltCompilationCtxtFree(XSLT_CCTXT(ret));
	ret->compCtxt = NULL;
    }
#endif
    return(ret);
}