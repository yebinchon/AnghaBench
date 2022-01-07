
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltTransformContextPtr ;
typedef int xmlChar ;


 void* testData ;
 int xsltGenericDebug (int ,char*,int const*) ;
 int xsltGenericDebugContext ;
 int xsltTransformError (int ,int *,int *,char*) ;

__attribute__((used)) static void
xsltExtShutdownTest(xsltTransformContextPtr ctxt,
                    const xmlChar * URI, void *data)
{
    if (testData == ((void*)0)) {
        xsltTransformError(ctxt, ((void*)0), ((void*)0),
                           "xsltExtShutdownTest: not initialized\n");
        return;
    }
    if (data != testData) {
        xsltTransformError(ctxt, ((void*)0), ((void*)0),
                           "xsltExtShutdownTest: wrong data\n");
    }
    testData = ((void*)0);
    xsltGenericDebug(xsltGenericDebugContext,
                     "Unregistered test module : %s\n", URI);
}
