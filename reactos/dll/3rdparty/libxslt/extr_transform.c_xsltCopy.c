
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltStylePreCompPtr ;
typedef int xsltStyleItemCopyPtr ;
typedef int xsltElemPreCompPtr ;
typedef int xmlNsPtr ;
typedef TYPE_3__* xmlNodePtr ;
typedef int xmlAttrPtr ;
struct TYPE_32__ {int type; int children; int content; int name; int doc; } ;
struct TYPE_31__ {int * use; } ;
struct TYPE_30__ {TYPE_3__* insert; int node; } ;
 int XSLT_TRACE (TYPE_1__*,int ,int ) ;
 int XSLT_TRACE_COPY ;
 TYPE_3__* xmlNewComment (int ) ;
 TYPE_3__* xmlNewDocPI (int ,int ,int ) ;
 TYPE_3__* xsltAddChild (TYPE_3__*,TYPE_3__*) ;
 int xsltApplyAttributeSet (TYPE_1__*,TYPE_3__*,TYPE_3__*,int *) ;
 int xsltApplySequenceConstructor (TYPE_1__*,int ,int ,int *) ;
 int xsltCopyText (TYPE_1__*,TYPE_3__*,TYPE_3__*,int ) ;
 int xsltGenericDebug (int ,char*,...) ;
 int xsltGenericDebugContext ;
 int xsltShallowCopyAttr (TYPE_1__*,TYPE_3__*,TYPE_3__*,int ) ;
 TYPE_3__* xsltShallowCopyElem (TYPE_1__*,TYPE_3__*,TYPE_3__*,int ) ;
 int xsltShallowCopyNsNode (TYPE_1__*,TYPE_3__*,TYPE_3__*,int ) ;

void
xsltCopy(xsltTransformContextPtr ctxt, xmlNodePtr node,
  xmlNodePtr inst, xsltElemPreCompPtr castedComp)
{



    xsltStylePreCompPtr comp = (xsltStylePreCompPtr) castedComp;

    xmlNodePtr copy, oldInsert;

    oldInsert = ctxt->insert;
    if (ctxt->insert != ((void*)0)) {
 switch (node->type) {
     case 128:
     case 135:
  xsltCopyText(ctxt, ctxt->insert, node, 0);
  break;
     case 133:
     case 131:
  break;
     case 132:
  copy = xsltShallowCopyElem(ctxt, node, ctxt->insert, 0);
  ctxt->insert = copy;
  if (comp->use != ((void*)0)) {
      xsltApplyAttributeSet(ctxt, node, inst, comp->use);
  }
  break;
     case 136: {
  xsltShallowCopyAttr(ctxt, inst, ctxt->insert, (xmlAttrPtr) node);
  break;
     }
     case 129:




  copy = xmlNewDocPI(ctxt->insert->doc, node->name,
                     node->content);
  copy = xsltAddChild(ctxt->insert, copy);
  break;
     case 134:




  copy = xmlNewComment(node->content);
  copy = xsltAddChild(ctxt->insert, copy);
  break;
     case 130:




  xsltShallowCopyNsNode(ctxt, inst, ctxt->insert, (xmlNsPtr)node);
  break;
     default:
  break;

 }
    }

    switch (node->type) {
 case 133:
 case 131:
 case 132:
     xsltApplySequenceConstructor(ctxt, ctxt->node, inst->children,
  ((void*)0));
     break;
 default:
     break;
    }
    ctxt->insert = oldInsert;
}
