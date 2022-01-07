
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltTemplatePtr ;
typedef int * xmlNodePtr ;
struct TYPE_9__ {int * elem; } ;
struct TYPE_8__ {int debugStatus; int * inst; } ;


 int XSLT_DEBUG_NONE ;


 int xslAddCall (TYPE_2__*,int *) ;
 int xslDropCall () ;
 int xslHandleDebugger (int *,int *,TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static xmlNodePtr
xsltDebuggerStartSequenceConstructor(xsltTransformContextPtr ctxt,
         xmlNodePtr contextNode,
         xmlNodePtr list,
         xsltTemplatePtr templ,
         int *addCallResult)
{
    xmlNodePtr debugedNode = ((void*)0);

    if (ctxt->debugStatus != XSLT_DEBUG_NONE) {
        if (templ) {
            *addCallResult = xslAddCall(templ, templ->elem);
        } else {
            *addCallResult = xslAddCall(((void*)0), list);
        }
        switch (ctxt->debugStatus) {
            case 128:
            case 129:
                if (*addCallResult)
                    xslDropCall();
                return(((void*)0));
        }
        if (templ) {
            xslHandleDebugger(templ->elem, contextNode, templ, ctxt);
            debugedNode = templ->elem;
        } else if (list) {
            xslHandleDebugger(list, contextNode, templ, ctxt);
            debugedNode = list;
        } else if (ctxt->inst) {
            xslHandleDebugger(ctxt->inst, contextNode, templ, ctxt);
            debugedNode = ctxt->inst;
        }
    }
    return(debugedNode);
}
