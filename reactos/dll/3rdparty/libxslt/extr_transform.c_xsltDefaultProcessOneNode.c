
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef TYPE_3__* xsltTransformContextPtr ;
typedef TYPE_4__* xsltTemplatePtr ;
typedef int xsltStackElemPtr ;
typedef TYPE_5__* xmlNodePtr ;
struct TYPE_28__ {int type; struct TYPE_28__* next; int name; int * content; struct TYPE_28__* children; TYPE_1__* prev; } ;
struct TYPE_27__ {int content; } ;
struct TYPE_26__ {TYPE_2__* xpathCtxt; int insert; } ;
struct TYPE_25__ {int contextSize; int proximityPosition; } ;
struct TYPE_24__ {TYPE_5__* next; } ;


 int CHECK_STOPPED ;
 int XSLT_TRACE (TYPE_3__*,int ,int ) ;
 int XSLT_TRACE_PROCESS_NODE ;
 int xmlFreeNode (TYPE_5__*) ;
 int xmlUnlinkNode (TYPE_5__*) ;
 int xsltApplyXSLTTemplate (TYPE_3__*,TYPE_5__*,int ,TYPE_4__*,int ) ;
 TYPE_5__* xsltCopyText (TYPE_3__*,int ,TYPE_5__*,int ) ;
 int xsltGenericDebug (int ,char*,...) ;
 int xsltGenericDebugContext ;
 TYPE_4__* xsltGetTemplate (TYPE_3__*,TYPE_5__*,int *) ;
 int xsltProcessOneNode (TYPE_3__*,TYPE_5__*,int ) ;
 int xsltTransformError (TYPE_3__*,int *,TYPE_5__*,char*) ;

__attribute__((used)) static void
xsltDefaultProcessOneNode(xsltTransformContextPtr ctxt, xmlNodePtr node,
     xsltStackElemPtr params) {
    xmlNodePtr copy;
    xmlNodePtr delete = ((void*)0), cur;
    int nbchild = 0, oldSize;
    int childno = 0, oldPos;
    xsltTemplatePtr template;

    CHECK_STOPPED;



    switch (node->type) {
 case 133:
 case 130:
 case 131:
     break;
 case 135:





     copy = xsltCopyText(ctxt, ctxt->insert, node, 0);
     if (copy == ((void*)0)) {
  xsltTransformError(ctxt, ((void*)0), node,
   "xsltDefaultProcessOneNode: cdata copy failed\n");
     }
     return;
 case 128:
     copy = xsltCopyText(ctxt, ctxt->insert, node, 0);
     if (copy == ((void*)0)) {
  xsltTransformError(ctxt, ((void*)0), node,
   "xsltDefaultProcessOneNode: text copy failed\n");
     }
     return;
 case 136:
     cur = node->children;
     while ((cur != ((void*)0)) && (cur->type != 128))
  cur = cur->next;
     if (cur == ((void*)0)) {
  xsltTransformError(ctxt, ((void*)0), node,
   "xsltDefaultProcessOneNode: no text for attribute\n");
     } else {
  copy = xsltCopyText(ctxt, ctxt->insert, cur, 0);
  if (copy == ((void*)0)) {
      xsltTransformError(ctxt, ((void*)0), node,
       "xsltDefaultProcessOneNode: text copy failed\n");
  }
     }
     return;
 default:
     return;
    }



    cur = node->children;
    while (cur != ((void*)0)) {
 switch (cur->type) {
     case 128:
     case 135:
     case 133:
     case 130:
     case 131:
     case 129:
     case 134:
  nbchild++;
  break;
            case 132:

  if (cur->next != ((void*)0))
      cur->next->prev = cur->prev;
  if (cur->prev != ((void*)0))
      cur->prev->next = cur->next;
  break;
     default:





  delete = cur;
 }
 cur = cur->next;
 if (delete != ((void*)0)) {




     xmlUnlinkNode(delete);
     xmlFreeNode(delete);
     delete = ((void*)0);
 }
    }
    if (delete != ((void*)0)) {




 xmlUnlinkNode(delete);
 xmlFreeNode(delete);
 delete = ((void*)0);
    }







    oldSize = ctxt->xpathCtxt->contextSize;
    oldPos = ctxt->xpathCtxt->proximityPosition;
    cur = node->children;
    while (cur != ((void*)0)) {
 childno++;
 switch (cur->type) {
     case 133:
     case 130:
     case 131:
  ctxt->xpathCtxt->contextSize = nbchild;
  ctxt->xpathCtxt->proximityPosition = childno;
  xsltProcessOneNode(ctxt, cur, params);
  break;
     case 135:
  template = xsltGetTemplate(ctxt, cur, ((void*)0));
  if (template) {
      xsltApplyXSLTTemplate(ctxt, cur, template->content,
   template, params);
  } else {





      copy = xsltCopyText(ctxt, ctxt->insert, cur, 0);
      if (copy == ((void*)0)) {
   xsltTransformError(ctxt, ((void*)0), cur,
       "xsltDefaultProcessOneNode: cdata copy failed\n");
      }
  }
  break;
     case 128:
  template = xsltGetTemplate(ctxt, cur, ((void*)0));
  if (template) {





      ctxt->xpathCtxt->contextSize = nbchild;
      ctxt->xpathCtxt->proximityPosition = childno;



      xsltApplyXSLTTemplate(ctxt, cur, template->content,
   template, params);
  } else {
      copy = xsltCopyText(ctxt, ctxt->insert, cur, 0);
      if (copy == ((void*)0)) {
   xsltTransformError(ctxt, ((void*)0), cur,
       "xsltDefaultProcessOneNode: text copy failed\n");
      }
  }
  break;
     case 129:
     case 134:
  template = xsltGetTemplate(ctxt, cur, ((void*)0));
  if (template) {
      ctxt->xpathCtxt->contextSize = nbchild;
      ctxt->xpathCtxt->proximityPosition = childno;



      xsltApplyXSLTTemplate(ctxt, cur, template->content,
   template, params);
  }
  break;
     default:
  break;
 }
 cur = cur->next;
    }
    ctxt->xpathCtxt->contextSize = oldSize;
    ctxt->xpathCtxt->proximityPosition = oldPos;
}
