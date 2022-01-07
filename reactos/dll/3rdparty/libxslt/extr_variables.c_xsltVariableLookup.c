
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * xsltTransformContextPtr ;
typedef TYPE_1__* xsltStackElemPtr ;
typedef int * xmlXPathObjectPtr ;
typedef int xmlChar ;
struct TYPE_4__ {int computed; int * value; } ;


 int XSLT_TRACE (int *,int ,int ) ;
 int XSLT_TRACE_VARIABLES ;
 int * xmlXPathObjectCopy (int *) ;
 int * xsltEvalVariable (int *,TYPE_1__*,int *) ;
 int xsltGenericDebug (int ,char*,int const*) ;
 int xsltGenericDebugContext ;
 int * xsltGlobalVariableLookup (int *,int const*,int const*) ;
 TYPE_1__* xsltStackLookup (int *,int const*,int const*) ;

xmlXPathObjectPtr
xsltVariableLookup(xsltTransformContextPtr ctxt, const xmlChar *name,
     const xmlChar *ns_uri) {
    xsltStackElemPtr elem;

    if (ctxt == ((void*)0))
 return(((void*)0));

    elem = xsltStackLookup(ctxt, name, ns_uri);
    if (elem == ((void*)0)) {
 return(xsltGlobalVariableLookup(ctxt, name, ns_uri));
    }
    if (elem->computed == 0) {




        elem->value = xsltEvalVariable(ctxt, elem, ((void*)0));
 elem->computed = 1;
    }
    if (elem->value != ((void*)0))
 return(xmlXPathObjectCopy(elem->value));




    return(((void*)0));
}
