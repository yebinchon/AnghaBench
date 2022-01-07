
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef int xmlChar ;
struct TYPE_4__ {int style; } ;


 void* testData ;
 int * testStyleData ;
 int xsltGenericDebug (int ,char*,...) ;
 int xsltGenericDebugContext ;
 int xsltGenericErrorContext ;
 int * xsltStyleGetExtData (int ,int const*) ;
 int xsltTransformError (TYPE_1__*,int *,int *,char*) ;

__attribute__((used)) static void *
xsltExtInitTest(xsltTransformContextPtr ctxt, const xmlChar * URI)
{
    if (testStyleData == ((void*)0)) {
        xsltGenericDebug(xsltGenericErrorContext,
                         "xsltExtInitTest: not initialized,"
                         " calling xsltStyleGetExtData\n");
        testStyleData = xsltStyleGetExtData(ctxt->style, URI);
        if (testStyleData == ((void*)0)) {
            xsltTransformError(ctxt, ((void*)0), ((void*)0),
                               "xsltExtInitTest: not initialized\n");
            return (((void*)0));
        }
    }
    if (testData != ((void*)0)) {
        xsltTransformError(ctxt, ((void*)0), ((void*)0),
                           "xsltExtInitTest: already initialized\n");
        return (((void*)0));
    }
    testData = (void *) "test data";
    xsltGenericDebug(xsltGenericDebugContext,
                     "Registered test module : %s\n", URI);
    return (testData);
}
