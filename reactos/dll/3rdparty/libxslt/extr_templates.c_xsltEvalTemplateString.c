
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_14__ {scalar_t__ type; int * children; } ;
struct TYPE_13__ {TYPE_2__* insert; int output; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int xmlFreeNode (TYPE_2__*) ;
 TYPE_2__* xmlNewDocNode (int ,int *,int const*,int *) ;
 int * xmlNodeGetContent (TYPE_2__*) ;
 int xsltApplyOneTemplate (TYPE_1__*,TYPE_2__*,int *,int *,int *) ;
 int xsltTransformError (TYPE_1__*,int *,TYPE_2__*,char*) ;

xmlChar *
xsltEvalTemplateString(xsltTransformContextPtr ctxt,
         xmlNodePtr contextNode,
                xmlNodePtr inst)
{
    xmlNodePtr oldInsert, insert = ((void*)0);
    xmlChar *ret;

    if ((ctxt == ((void*)0)) || (contextNode == ((void*)0)) || (inst == ((void*)0)) ||
        (inst->type != XML_ELEMENT_NODE))
 return(((void*)0));

    if (inst->children == ((void*)0))
 return(((void*)0));







    insert = xmlNewDocNode(ctxt->output, ((void*)0),
                    (const xmlChar *)"fake", ((void*)0));
    if (insert == ((void*)0)) {
 xsltTransformError(ctxt, ((void*)0), contextNode,
  "Failed to create temporary node\n");
 return(((void*)0));
    }
    oldInsert = ctxt->insert;
    ctxt->insert = insert;



    xsltApplyOneTemplate(ctxt, contextNode, inst->children, ((void*)0), ((void*)0));

    ctxt->insert = oldInsert;

    ret = xmlNodeGetContent(insert);
    if (insert != ((void*)0))
 xmlFreeNode(insert);
    return(ret);
}
