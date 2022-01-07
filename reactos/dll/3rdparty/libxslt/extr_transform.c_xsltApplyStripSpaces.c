
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int xsltTransformContextPtr ;
typedef TYPE_1__* xmlNodePtr ;
struct TYPE_8__ {scalar_t__ type; struct TYPE_8__* next; struct TYPE_8__* parent; struct TYPE_8__* children; } ;


 scalar_t__ IS_BLANK_NODE (TYPE_1__*) ;
 scalar_t__ IS_XSLT_REAL_NODE (TYPE_1__*) ;
 scalar_t__ XML_ENTITY_REF_NODE ;
 int XSLT_TRACE (int ,int ,int ) ;
 int XSLT_TRACE_STRIP_SPACES ;
 int xmlFreeNode (TYPE_1__*) ;
 int xmlUnlinkNode (TYPE_1__*) ;
 scalar_t__ xsltFindElemSpaceHandling (int ,TYPE_1__*) ;
 int xsltGenericDebug (int ,char*,int) ;
 int xsltGenericDebugContext ;

void
xsltApplyStripSpaces(xsltTransformContextPtr ctxt, xmlNodePtr node) {
    xmlNodePtr current;





    current = node;
    while (current != ((void*)0)) {



 if ((IS_XSLT_REAL_NODE(current)) &&
     (current->children != ((void*)0)) &&
     (xsltFindElemSpaceHandling(ctxt, current))) {
     xmlNodePtr delete = ((void*)0), cur = current->children;

     while (cur != ((void*)0)) {
  if (IS_BLANK_NODE(cur))
      delete = cur;

  cur = cur->next;
  if (delete != ((void*)0)) {
      xmlUnlinkNode(delete);
      xmlFreeNode(delete);
      delete = ((void*)0);



  }
     }
 }




 if (node->type == XML_ENTITY_REF_NODE) {

     xsltApplyStripSpaces(ctxt, node->children);
 }
 if ((current->children != ((void*)0)) &&
            (current->type != XML_ENTITY_REF_NODE)) {
     current = current->children;
 } else if (current->next != ((void*)0)) {
     current = current->next;
 } else {
     do {
  current = current->parent;
  if (current == ((void*)0))
      break;
  if (current == node)
      goto done;
  if (current->next != ((void*)0)) {
      current = current->next;
      break;
  }
     } while (current != ((void*)0));
 }
    }

done:




    return;
}
