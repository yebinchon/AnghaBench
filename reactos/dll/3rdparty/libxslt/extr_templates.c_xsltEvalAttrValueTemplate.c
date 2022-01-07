
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * xsltTransformContextPtr ;
typedef TYPE_1__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_5__ {scalar_t__ type; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int XSLT_TRACE (int *,int ,int ) ;
 int XSLT_TRACE_TEMPLATES ;
 int xmlFree (int *) ;
 int * xsltAttrTemplateValueProcessNode (int *,int *,TYPE_1__*) ;
 int xsltGenericDebug (int ,char*,int *,int *) ;
 int xsltGenericDebugContext ;
 int * xsltGetNsProp (TYPE_1__*,int const*,int const*) ;

xmlChar *
xsltEvalAttrValueTemplate(xsltTransformContextPtr ctxt, xmlNodePtr inst,
                   const xmlChar *name, const xmlChar *ns)
{
    xmlChar *ret;
    xmlChar *expr;

    if ((ctxt == ((void*)0)) || (inst == ((void*)0)) || (name == ((void*)0)) ||
        (inst->type != XML_ELEMENT_NODE))
 return(((void*)0));

    expr = xsltGetNsProp(inst, name, ns);
    if (expr == ((void*)0))
 return(((void*)0));







    ret = xsltAttrTemplateValueProcessNode(ctxt, expr, inst);




    if (expr != ((void*)0))
 xmlFree(expr);
    return(ret);
}
