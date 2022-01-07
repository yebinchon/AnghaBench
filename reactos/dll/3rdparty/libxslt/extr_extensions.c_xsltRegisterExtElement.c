
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xsltTransformFunction ;
typedef TYPE_1__* xsltTransformContextPtr ;
typedef int xmlChar ;
struct TYPE_3__ {int * extElements; } ;


 int XML_CAST_FPTR (int *) ;
 int xmlHashAddEntry2 (int *,int const*,int const*,int ) ;
 int * xmlHashCreate (int) ;

int
xsltRegisterExtElement(xsltTransformContextPtr ctxt, const xmlChar * name,
                       const xmlChar * URI, xsltTransformFunction function)
{
    if ((ctxt == ((void*)0)) || (name == ((void*)0)) ||
        (URI == ((void*)0)) || (function == ((void*)0)))
        return (-1);
    if (ctxt->extElements == ((void*)0))
        ctxt->extElements = xmlHashCreate(10);
    if (ctxt->extElements == ((void*)0))
        return (-1);
    return (xmlHashAddEntry2
            (ctxt->extElements, name, URI, XML_CAST_FPTR(function)));
}
