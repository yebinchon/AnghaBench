#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  int /*<<< orphan*/  xsltStylesheet ;
struct TYPE_5__ {int omitXmlDeclaration; int standalone; int indent; int internalized; int /*<<< orphan*/  dict; scalar_t__ forwards_compatible; scalar_t__ literal_result; scalar_t__ extrasNr; int /*<<< orphan*/ * extInfos; int /*<<< orphan*/ * exclPrefixTab; scalar_t__ exclPrefixMax; scalar_t__ exclPrefixNr; scalar_t__ warnings; scalar_t__ errors; int /*<<< orphan*/  decimalFormat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

xsltStylesheetPtr
FUNC8(void) {
    xsltStylesheetPtr ret = NULL;

    ret = (xsltStylesheetPtr) FUNC2(sizeof(xsltStylesheet));
    if (ret == NULL) {
	FUNC7(NULL, NULL, NULL,
		"xsltNewStylesheet : malloc failed\n");
	goto internal_err;
    }
    FUNC0(ret, 0, sizeof(xsltStylesheet));

    ret->omitXmlDeclaration = -1;
    ret->standalone = -1;
    ret->decimalFormat = FUNC6(NULL, NULL);
    ret->indent = -1;
    ret->errors = 0;
    ret->warnings = 0;
    ret->exclPrefixNr = 0;
    ret->exclPrefixMax = 0;
    ret->exclPrefixTab = NULL;
    ret->extInfos = NULL;
    ret->extrasNr = 0;
    ret->internalized = 1;
    ret->literal_result = 0;
    ret->forwards_compatible = 0;
    ret->dict = FUNC1();
#ifdef WITH_XSLT_DEBUG
    xsltGenericDebug(xsltGenericDebugContext,
	"creating dictionary for stylesheet\n");
#endif

    FUNC5();

    return(ret);

internal_err:
    if (ret != NULL)
	FUNC3(ret);
    return(NULL);
}