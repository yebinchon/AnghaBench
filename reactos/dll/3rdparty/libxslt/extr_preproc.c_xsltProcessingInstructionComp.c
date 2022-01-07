
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int * xsltStylesheetPtr ;
typedef TYPE_1__* xsltStylePreCompPtr ;
typedef TYPE_1__* xsltStyleItemPIPtr ;
typedef TYPE_3__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__* psvi; } ;
struct TYPE_7__ {int has_name; int name; TYPE_3__* inst; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int XSLT_FUNC_PI ;
 int XSLT_NAMESPACE ;
 int xsltEvalStaticAttrValueTemplate (int *,TYPE_3__*,int const*,int ,int *) ;
 TYPE_1__* xsltNewStylePreComp (int *,int ) ;

__attribute__((used)) static void
xsltProcessingInstructionComp(xsltStylesheetPtr style, xmlNodePtr inst) {



    xsltStylePreCompPtr comp;


    if ((style == ((void*)0)) || (inst == ((void*)0)) || (inst->type != XML_ELEMENT_NODE))
 return;




    comp = xsltNewStylePreComp(style, XSLT_FUNC_PI);


    if (comp == ((void*)0))
 return;
    inst->psvi = comp;
    comp->inst = inst;

    comp->name = xsltEvalStaticAttrValueTemplate(style, inst,
     (const xmlChar *)"name",
     XSLT_NAMESPACE, &comp->has_name);
}
