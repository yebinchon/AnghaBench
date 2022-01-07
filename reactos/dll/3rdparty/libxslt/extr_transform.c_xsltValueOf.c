
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltStylePreCompPtr ;
typedef int xsltStyleItemValueOfPtr ;
typedef int xsltElemPreCompPtr ;
typedef int * xmlXPathObjectPtr ;
typedef int * xmlNodePtr ;
typedef scalar_t__ xmlChar ;
struct TYPE_10__ {scalar_t__* select; int noescape; int * comp; } ;
struct TYPE_9__ {void* state; int insert; } ;


 void* XSLT_STATE_STOPPED ;
 int XSLT_TRACE (TYPE_1__*,int ,int ) ;
 int XSLT_TRACE_VALUE_OF ;
 int xmlFree (scalar_t__*) ;
 scalar_t__* xmlXPathCastToString (int *) ;
 int xmlXPathFreeObject (int *) ;
 int xsltCopyTextString (TYPE_1__*,int ,scalar_t__*,int ) ;
 int xsltGenericDebug (int ,char*,scalar_t__*) ;
 int xsltGenericDebugContext ;
 int * xsltPreCompEval (TYPE_1__*,int *,TYPE_2__*) ;
 int xsltTransformError (TYPE_1__*,int *,int *,char*) ;

void
xsltValueOf(xsltTransformContextPtr ctxt, xmlNodePtr node,
            xmlNodePtr inst, xsltElemPreCompPtr castedComp)
{



    xsltStylePreCompPtr comp = (xsltStylePreCompPtr) castedComp;

    xmlXPathObjectPtr res = ((void*)0);
    xmlChar *value = ((void*)0);

    if ((ctxt == ((void*)0)) || (node == ((void*)0)) || (inst == ((void*)0)))
 return;

    if ((comp == ((void*)0)) || (comp->select == ((void*)0)) || (comp->comp == ((void*)0))) {
 xsltTransformError(ctxt, ((void*)0), inst,
     "Internal error in xsltValueOf(): "
     "The XSLT 'value-of' instruction was not compiled.\n");
 return;
    }






    res = xsltPreCompEval(ctxt, node, comp);




    if (res != ((void*)0)) {
 value = xmlXPathCastToString(res);
 if (value == ((void*)0)) {
     xsltTransformError(ctxt, ((void*)0), inst,
  "Internal error in xsltValueOf(): "
  "failed to cast an XPath object to string.\n");
     ctxt->state = XSLT_STATE_STOPPED;
     goto error;
 }
 if (value[0] != 0) {
     xsltCopyTextString(ctxt, ctxt->insert, value, comp->noescape);
 }
    } else {
 xsltTransformError(ctxt, ((void*)0), inst,
     "XPath evaluation returned no result.\n");
 ctxt->state = XSLT_STATE_STOPPED;
 goto error;
    }
error:
    if (value != ((void*)0))
 xmlFree(value);
    if (res != ((void*)0))
 xmlXPathFreeObject(res);
}
