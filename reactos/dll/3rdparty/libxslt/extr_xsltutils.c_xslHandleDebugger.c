
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xsltTransformContextPtr ;
typedef int xsltTemplatePtr ;
typedef int xmlNodePtr ;
struct TYPE_2__ {int (* handler ) (int ,int ,int ,int ) ;} ;


 int stub1 (int ,int ,int ,int ) ;
 TYPE_1__ xsltDebuggerCurrentCallbacks ;

void
xslHandleDebugger(xmlNodePtr cur, xmlNodePtr node, xsltTemplatePtr templ,
           xsltTransformContextPtr ctxt)
{
    if (xsltDebuggerCurrentCallbacks.handler != ((void*)0))
 xsltDebuggerCurrentCallbacks.handler(cur, node, templ, ctxt);
}
