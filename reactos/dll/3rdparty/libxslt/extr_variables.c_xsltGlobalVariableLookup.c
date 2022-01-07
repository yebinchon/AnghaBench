
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltStackElemPtr ;
typedef int * xmlXPathObjectPtr ;
typedef int xmlChar ;
struct TYPE_11__ {scalar_t__ computed; scalar_t__ name; int * value; TYPE_1__* comp; } ;
struct TYPE_10__ {int * globalVars; int * xpathCtxt; } ;
struct TYPE_9__ {int inst; } ;


 int XSLT_TRACE (TYPE_2__*,int ,int ) ;
 int XSLT_TRACE_VARIABLES ;
 scalar_t__ xmlHashLookup2 (int *,int const*,int const*) ;
 int * xmlXPathObjectCopy (int *) ;
 scalar_t__ xsltComputingGlobalVarMarker ;
 int * xsltEvalGlobalVariable (TYPE_3__*,TYPE_2__*) ;
 int xsltGenericDebug (int ,char*,int const*) ;
 int xsltGenericDebugContext ;
 int xsltTransformError (TYPE_2__*,int *,int ,char*,int const*) ;

__attribute__((used)) static xmlXPathObjectPtr
xsltGlobalVariableLookup(xsltTransformContextPtr ctxt, const xmlChar *name,
           const xmlChar *ns_uri) {
    xsltStackElemPtr elem;
    xmlXPathObjectPtr ret = ((void*)0);




    if ((ctxt->xpathCtxt == ((void*)0)) || (ctxt->globalVars == ((void*)0)))
 return(((void*)0));
    elem = (xsltStackElemPtr)
     xmlHashLookup2(ctxt->globalVars, name, ns_uri);
    if (elem == ((void*)0)) {




 return(((void*)0));
    }




    if (elem->computed == 0) {
 if (elem->name == xsltComputingGlobalVarMarker) {
     xsltTransformError(ctxt, ((void*)0), elem->comp->inst,
  "Recursive definition of %s\n", name);
     return(((void*)0));
 }
 ret = xsltEvalGlobalVariable(elem, ctxt);
    } else
 ret = elem->value;
    return(xmlXPathObjectCopy(ret));
}
