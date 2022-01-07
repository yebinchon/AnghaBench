
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef int * xmlXPathFunction ;
typedef int xmlChar ;
struct TYPE_3__ {int * extFunctions; int * xpathCtxt; } ;


 int XML_CAST_FPTR (int *) ;
 int xmlHashAddEntry2 (int *,int const*,int const*,int ) ;
 int * xmlHashCreate (int) ;
 int xmlXPathRegisterFuncNS (int *,int const*,int const*,int *) ;

int
xsltRegisterExtFunction(xsltTransformContextPtr ctxt, const xmlChar * name,
                        const xmlChar * URI, xmlXPathFunction function)
{
    int ret;

    if ((ctxt == ((void*)0)) || (name == ((void*)0)) ||
        (URI == ((void*)0)) || (function == ((void*)0)))
        return (-1);
    if (ctxt->xpathCtxt != ((void*)0)) {
        xmlXPathRegisterFuncNS(ctxt->xpathCtxt, name, URI, function);
    }
    if (ctxt->extFunctions == ((void*)0))
        ctxt->extFunctions = xmlHashCreate(10);
    if (ctxt->extFunctions == ((void*)0))
        return (-1);

    ret = xmlHashAddEntry2(ctxt->extFunctions, name, URI,
                           XML_CAST_FPTR(function));

    return(ret);
}
