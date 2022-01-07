
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * xsltTransformContextPtr ;
typedef TYPE_1__* xsltStylePreCompPtr ;
typedef int xsltStyleItemParamPtr ;
typedef TYPE_2__* xmlNodePtr ;
struct TYPE_7__ {scalar_t__ type; int children; TYPE_1__* psvi; } ;
struct TYPE_6__ {int * name; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int XSLT_TRACE (int *,int ,int ) ;
 int XSLT_TRACE_VARIABLES ;
 int xsltGenericDebug (int ,char*,int *) ;
 int xsltGenericDebugContext ;
 int xsltRegisterVariable (int *,TYPE_1__*,int ,int) ;
 int xsltTransformError (int *,int *,TYPE_2__*,char*) ;

void
xsltParseStylesheetParam(xsltTransformContextPtr ctxt, xmlNodePtr cur)
{



    xsltStylePreCompPtr comp;


    if ((cur == ((void*)0)) || (ctxt == ((void*)0)) || (cur->type != XML_ELEMENT_NODE))
 return;

    comp = cur->psvi;
    if ((comp == ((void*)0)) || (comp->name == ((void*)0))) {
 xsltTransformError(ctxt, ((void*)0), cur,
     "Internal error in xsltParseStylesheetParam(): "
     "The XSLT 'param' declaration was not compiled correctly.\n");
 return;
    }






    xsltRegisterVariable(ctxt, (xsltStylePreCompPtr) comp, cur->children, 1);
}
