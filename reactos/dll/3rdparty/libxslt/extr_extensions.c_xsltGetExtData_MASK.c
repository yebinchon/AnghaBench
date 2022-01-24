#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xsltTransformContextPtr ;
typedef  TYPE_2__* xsltExtModulePtr ;
typedef  TYPE_3__* xsltExtDataPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct TYPE_14__ {void* extData; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* shutdownFunc ) (TYPE_1__*,int /*<<< orphan*/  const*,void*) ;void* (* initFunc ) (TYPE_1__*,int /*<<< orphan*/  const*) ;} ;
struct TYPE_12__ {int /*<<< orphan*/ * extInfos; } ;

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
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  xsltGenericDebugContext ; 
 TYPE_3__* FUNC9 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/  const*) ; 

void *
FUNC11(xsltTransformContextPtr ctxt, const xmlChar * URI)
{
    xsltExtDataPtr data;

    if ((ctxt == NULL) || (URI == NULL))
        return (NULL);
    if (ctxt->extInfos == NULL) {
        ctxt->extInfos = FUNC3(10);
        if (ctxt->extInfos == NULL)
            return (NULL);
        data = NULL;
    } else {
        data = (xsltExtDataPtr) FUNC4(ctxt->extInfos, URI);
    }
    if (data == NULL) {
        void *extData;
        xsltExtModulePtr module;

        FUNC5(xsltExtMutex);

        module = FUNC4(xsltExtensionsHash, URI);

        FUNC6(xsltExtMutex);

        if (module == NULL) {
#ifdef WITH_XSLT_DEBUG_EXTENSIONS
            xsltGenericDebug(xsltGenericDebugContext,
                             "Not registered extension module: %s\n", URI);
#endif
            return (NULL);
        } else {
            if (module->initFunc == NULL)
                return (NULL);

#ifdef WITH_XSLT_DEBUG_EXTENSIONS
            xsltGenericDebug(xsltGenericDebugContext,
                             "Initializing module: %s\n", URI);
#endif

            extData = module->initFunc(ctxt, URI);
            if (extData == NULL)
                return (NULL);

            data = FUNC9(module, extData);
            if (data == NULL)
                return (NULL);
            if (FUNC2(ctxt->extInfos, URI, (void *) data) < 0) {
                FUNC10(ctxt, NULL, NULL,
                                   "Failed to register module data: %s\n",
                                   URI);
                if (module->shutdownFunc)
                    module->shutdownFunc(ctxt, URI, extData);
                FUNC7(data);
                return (NULL);
            }
        }
    }
    return (data->extData);
}