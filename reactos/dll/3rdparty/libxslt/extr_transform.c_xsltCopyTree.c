
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_54__ TYPE_4__ ;
typedef struct TYPE_53__ TYPE_3__ ;
typedef struct TYPE_52__ TYPE_2__ ;
typedef struct TYPE_51__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xmlNsPtr ;
typedef TYPE_4__* xmlNodePtr ;
typedef int xmlAttrPtr ;
struct TYPE_54__ {int type; int name; int * children; int * properties; TYPE_3__* ns; int * nsDef; int doc; TYPE_1__* parent; int * next; struct TYPE_54__* last; int content; } ;
struct TYPE_53__ {int * prefix; int * href; } ;
struct TYPE_52__ {int output; } ;
struct TYPE_51__ {int const type; } ;
 scalar_t__ XSLT_IS_RES_TREE_FRAG (TYPE_4__*) ;
 TYPE_4__* xmlDocCopyNode (TYPE_4__*,int ,int ) ;
 int xmlFree (TYPE_3__**) ;
 TYPE_3__** xmlGetNsList (int ,TYPE_4__*) ;
 TYPE_3__* xmlNewNs (TYPE_4__*,int *,int *) ;
 TYPE_3__* xmlSearchNs (int ,TYPE_4__*,int *) ;
 TYPE_3__* xmlSearchNsByHref (int ,TYPE_4__*,int *) ;
 int xmlStrEqual (int *,int *) ;
 int xmlStringTextNoenc ;
 TYPE_4__* xsltAddChild (TYPE_4__*,TYPE_4__*) ;
 int xsltCopyAttrListNoOverwrite (TYPE_2__*,TYPE_4__*,TYPE_4__*,int *) ;
 int xsltCopyNamespaceList (TYPE_2__*,TYPE_4__*,int *) ;
 int xsltCopyNamespaceListInternal (TYPE_4__*,int *) ;
 TYPE_4__* xsltCopyTextString (TYPE_2__*,TYPE_4__*,int ,int) ;
 TYPE_4__* xsltCopyTreeList (TYPE_2__*,TYPE_4__*,int *,TYPE_4__*,int,int) ;
 TYPE_3__* xsltGetSpecialNamespace (TYPE_2__*,TYPE_4__*,int *,int *,TYPE_4__*) ;
 int xsltShallowCopyAttr (TYPE_2__*,TYPE_4__*,TYPE_4__*,int ) ;
 int xsltShallowCopyNsNode (TYPE_2__*,TYPE_4__*,TYPE_4__*,TYPE_3__*) ;
 int xsltTransformError (TYPE_2__*,int *,TYPE_4__*,char*,int ) ;

__attribute__((used)) static xmlNodePtr
xsltCopyTree(xsltTransformContextPtr ctxt, xmlNodePtr invocNode,
      xmlNodePtr node, xmlNodePtr insert, int isLRE,
      int topElemVisited)
{
    xmlNodePtr copy;

    if (node == ((void*)0))
 return(((void*)0));
    switch (node->type) {
        case 138:
        case 135:
        case 136:
        case 131:
        case 145:
        case 142:
        case 134:



     break;
        case 130: {
     int noenc = (node->name == xmlStringTextNoenc);
     return(xsltCopyTextString(ctxt, insert, node->content, noenc));
     }
        case 146:
     return(xsltCopyTextString(ctxt, insert, node->content, 0));
        case 147:
     return((xmlNodePtr)
  xsltShallowCopyAttr(ctxt, invocNode, insert, (xmlAttrPtr) node));
        case 133:
     return((xmlNodePtr) xsltShallowCopyNsNode(ctxt, invocNode,
  insert, (xmlNsPtr) node));

        case 141:
        case 143:
        case 132:
        case 140:
        case 139:
        case 148:
        case 137:
        case 128:
        case 129:
            return(((void*)0));
    }
    if (XSLT_IS_RES_TREE_FRAG(node)) {
 if (node->children != ((void*)0))
     copy = xsltCopyTreeList(ctxt, invocNode,
  node->children, insert, 0, 0);
 else
     copy = ((void*)0);
 return(copy);
    }
    copy = xmlDocCopyNode(node, insert->doc, 0);
    if (copy != ((void*)0)) {
 copy->doc = ctxt->output;
 copy = xsltAddChild(insert, copy);
        if (copy == ((void*)0)) {
            xsltTransformError(ctxt, ((void*)0), invocNode,
            "xsltCopyTree: Copying of '%s' failed.\n", node->name);
            return (copy);
        }



 if (insert->last != copy)
     return(insert->last);
 copy->next = ((void*)0);

 if (node->type == 138) {
     if ((topElemVisited == 0) &&
  (node->parent != ((void*)0)) &&
  (node->parent->type != 142) &&
  (node->parent->type != 134))
     {
  xmlNsPtr *nsList, *curns, ns;
  nsList = xmlGetNsList(node->doc, node);
  if (nsList != ((void*)0)) {
      curns = nsList;
      do {




   ns = xmlSearchNs(insert->doc, insert,
       (*curns)->prefix);

   if ((ns == ((void*)0)) ||
       (! xmlStrEqual(ns->href, (*curns)->href)))
   {
       ns = ((void*)0);
   }
   if (ns == ((void*)0)) {



       ns = xmlNewNs(copy, (*curns)->href,
    (*curns)->prefix);

   }
   if (node->ns == *curns) {




       copy->ns = ns;
   }
   curns++;
      } while (*curns != ((void*)0));
      xmlFree(nsList);
  }
     } else if (node->nsDef != ((void*)0)) {



  if (node->nsDef != ((void*)0)) {
      if (isLRE)
   xsltCopyNamespaceList(ctxt, copy, node->nsDef);
      else
   xsltCopyNamespaceListInternal(copy, node->nsDef);
  }
     }



     if (node->ns != ((void*)0)) {
  if (copy->ns == ((void*)0)) {




      copy->ns = xsltGetSpecialNamespace(ctxt, invocNode,
   node->ns->href, node->ns->prefix, copy);
  }
     } else if ((insert->type == 138) &&
  (insert->ns != ((void*)0)))
     {



  xsltGetSpecialNamespace(ctxt, invocNode, ((void*)0), ((void*)0), copy);
     }



     if (node->properties != ((void*)0)) {
  xsltCopyAttrListNoOverwrite(ctxt, invocNode,
      copy, node->properties);
     }
     if (topElemVisited == 0)
  topElemVisited = 1;
 }



 if (node->children != ((void*)0)) {
     xsltCopyTreeList(ctxt, invocNode,
  node->children, copy, isLRE, topElemVisited);
 }
    } else {
 xsltTransformError(ctxt, ((void*)0), invocNode,
     "xsltCopyTree: Copying of '%s' failed.\n", node->name);
    }
    return(copy);
}
