#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltStylesheetPtr ;
typedef  TYPE_2__* xsltExtModulePtr ;
typedef  int /*<<< orphan*/ * xsltExtDataPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_10__ {int /*<<< orphan*/  (* styleShutdownFunc ) (TYPE_1__*,int /*<<< orphan*/  const*,void*) ;void* (* styleInitFunc ) (TYPE_1__*,int /*<<< orphan*/  const*) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  errors; int /*<<< orphan*/ * extInfos; } ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void*) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xsltExtMutex ; 
 int /*<<< orphan*/ * xsltExtensionsHash ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static xsltExtDataPtr
FUNC11(xsltStylesheetPtr style,
				     const xmlChar * URI)
{
    xsltExtDataPtr dataContainer;
    void *userData = NULL;
    xsltExtModulePtr module;

    if ((style == NULL) || (URI == NULL))
	return(NULL);

    if (xsltExtensionsHash == NULL) {
#ifdef WITH_XSLT_DEBUG_EXTENSIONS
	xsltGenericDebug(xsltGenericDebugContext,
	    "Not registered extension module: %s\n", URI);
#endif
	return(NULL);
    }

    FUNC5(xsltExtMutex);

    module = FUNC4(xsltExtensionsHash, URI);

    FUNC6(xsltExtMutex);

    if (module == NULL) {
#ifdef WITH_XSLT_DEBUG_EXTENSIONS
	xsltGenericDebug(xsltGenericDebugContext,
	    "Not registered extension module: %s\n", URI);
#endif
	return (NULL);
    }
    /*
    * The specified module was registered so initialize it.
    */
    if (style->extInfos == NULL) {
	style->extInfos = FUNC3(10);
	if (style->extInfos == NULL)
	    return (NULL);
    }
    /*
    * Fire the initialization callback if available.
    */
    if (module->styleInitFunc == NULL) {
#ifdef WITH_XSLT_DEBUG_EXTENSIONS
	xsltGenericDebug(xsltGenericDebugContext,
	    "Initializing module with *no* callback: %s\n", URI);
#endif
    } else {
#ifdef WITH_XSLT_DEBUG_EXTENSIONS
	xsltGenericDebug(xsltGenericDebugContext,
	    "Initializing module with callback: %s\n", URI);
#endif
	/*
	* Fire the initialization callback.
	*/
	userData = module->styleInitFunc(style, URI);
    }
    /*
    * Store the user-data in the context of the given stylesheet.
    */
    dataContainer = FUNC9(module, userData);
    if (dataContainer == NULL)
	return (NULL);

    if (FUNC2(style->extInfos, URI,
	(void *) dataContainer) < 0)
    {
	FUNC10(NULL, style, NULL,
	    "Failed to register module '%s'.\n", URI);
	style->errors++;
	if (module->styleShutdownFunc)
	    module->styleShutdownFunc(style, URI, userData);
	FUNC7(dataContainer);
	return (NULL);
    }

    return(dataContainer);
}