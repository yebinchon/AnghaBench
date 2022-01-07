
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int xsltTransformFunction ;
typedef TYPE_1__* xsltStylesheetPtr ;
typedef int * xsltElemPreCompPtr ;
typedef int * xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_6__ {int errors; } ;


 scalar_t__ XSLT_DEFAULT_URL ;
 int * testStyleData ;
 int xsltGenericDebug (int ,char*) ;
 int xsltGenericDebugContext ;
 int * xsltNewElemPreComp (TYPE_1__*,int *,int ) ;
 int xsltStyleGetExtData (TYPE_1__*,int const*) ;
 int xsltTransformError (int *,TYPE_1__*,int *,char*) ;

__attribute__((used)) static xsltElemPreCompPtr
xsltExtElementPreCompTest(xsltStylesheetPtr style, xmlNodePtr inst,
                          xsltTransformFunction function)
{
    xsltElemPreCompPtr ret;

    if (style == ((void*)0)) {
        xsltTransformError(((void*)0), ((void*)0), inst,
                           "xsltExtElementTest: no transformation context\n");
        return (((void*)0));
    }
    if (testStyleData == ((void*)0)) {
        xsltGenericDebug(xsltGenericDebugContext,
                         "xsltExtElementPreCompTest: not initialized,"
                         " calling xsltStyleGetExtData\n");
        xsltStyleGetExtData(style, (const xmlChar *) XSLT_DEFAULT_URL);
        if (testStyleData == ((void*)0)) {
            xsltTransformError(((void*)0), style, inst,
                               "xsltExtElementPreCompTest: not initialized\n");
            if (style != ((void*)0))
                style->errors++;
            return (((void*)0));
        }
    }
    if (inst == ((void*)0)) {
        xsltTransformError(((void*)0), style, inst,
                           "xsltExtElementPreCompTest: no instruction\n");
        if (style != ((void*)0))
            style->errors++;
        return (((void*)0));
    }
    ret = xsltNewElemPreComp(style, inst, function);
    return (ret);
}
