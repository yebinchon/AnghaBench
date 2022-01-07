
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xmlNodePtr ;
struct TYPE_32__ {int * prefix; int * href; } ;
struct TYPE_31__ {scalar_t__ type; int name; TYPE_9__* ns; int * nsDef; int doc; } ;
struct TYPE_30__ {int output; } ;


 scalar_t__ XML_CDATA_SECTION_NODE ;
 scalar_t__ XML_DTD_NODE ;
 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_TEXT_NODE ;
 TYPE_2__* xmlDocCopyNode (TYPE_2__*,int ,int ) ;
 TYPE_2__* xsltAddChild (TYPE_2__*,TYPE_2__*) ;
 int xsltCopyNamespaceList (TYPE_1__*,TYPE_2__*,int *) ;
 int xsltCopyNamespaceListInternal (TYPE_2__*,int *) ;
 TYPE_2__* xsltCopyText (TYPE_1__*,TYPE_2__*,TYPE_2__*,int ) ;
 TYPE_9__* xsltGetNamespace (TYPE_1__*,TYPE_2__*,TYPE_9__*,TYPE_2__*) ;
 TYPE_9__* xsltGetSpecialNamespace (TYPE_1__*,TYPE_2__*,int *,int *,TYPE_2__*) ;
 int xsltTransformError (TYPE_1__*,int *,TYPE_2__*,char*,...) ;

__attribute__((used)) static xmlNodePtr
xsltShallowCopyElem(xsltTransformContextPtr ctxt, xmlNodePtr node,
      xmlNodePtr insert, int isLRE)
{
    xmlNodePtr copy;

    if ((node->type == XML_DTD_NODE) || (insert == ((void*)0)))
 return(((void*)0));
    if ((node->type == XML_TEXT_NODE) ||
 (node->type == XML_CDATA_SECTION_NODE))
 return(xsltCopyText(ctxt, insert, node, 0));

    copy = xmlDocCopyNode(node, insert->doc, 0);
    if (copy != ((void*)0)) {
 copy->doc = ctxt->output;
 copy = xsltAddChild(insert, copy);
        if (copy == ((void*)0)) {
             xsltTransformError(ctxt, ((void*)0), node,
                "xsltShallowCopyElem: copy failed\n");
             return (copy);
        }

 if (node->type == XML_ELEMENT_NODE) {



     if (node->nsDef != ((void*)0)) {




  if (isLRE)
      xsltCopyNamespaceList(ctxt, copy, node->nsDef);
  else
      xsltCopyNamespaceListInternal(copy, node->nsDef);
     }
     if (node->ns != ((void*)0)) {
  if (isLRE) {





      copy->ns = xsltGetNamespace(ctxt, node, node->ns, copy);
  } else {
      copy->ns = xsltGetSpecialNamespace(ctxt,
   node, node->ns->href, node->ns->prefix, copy);

  }
     } else if ((insert->type == XML_ELEMENT_NODE) &&
         (insert->ns != ((void*)0)))
     {



  xsltGetSpecialNamespace(ctxt, node, ((void*)0), ((void*)0), copy);
     }
 }
    } else {
 xsltTransformError(ctxt, ((void*)0), node,
  "xsltShallowCopyElem: copy %s failed\n", node->name);
    }
    return(copy);
}
