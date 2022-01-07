
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xsltTransformFunction ;
typedef TYPE_1__* xsltTransformContextPtr ;
typedef int xmlChar ;
typedef int * XML_CAST_FPTR ;
struct TYPE_3__ {int * extElements; } ;


 int * xmlHashLookup2 (int *,int const*,int const*) ;
 int * xsltExtModuleElementLookup (int const*,int const*) ;

xsltTransformFunction
xsltExtElementLookup(xsltTransformContextPtr ctxt,
                     const xmlChar * name, const xmlChar * URI)
{
    xsltTransformFunction ret;

    if ((name == ((void*)0)) || (URI == ((void*)0)))
        return (((void*)0));

    if ((ctxt != ((void*)0)) && (ctxt->extElements != ((void*)0))) {
        XML_CAST_FPTR(ret) = xmlHashLookup2(ctxt->extElements, name, URI);
        if (ret != ((void*)0)) {
            return(ret);
        }
    }

    ret = xsltExtModuleElementLookup(name, URI);

    return (ret);
}
