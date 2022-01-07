
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_3__* xsltTransformContextPtr ;
typedef TYPE_4__* xmlNsPtr ;
typedef TYPE_5__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_18__ {scalar_t__ type; int doc; TYPE_1__* ns; } ;
struct TYPE_17__ {scalar_t__ type; struct TYPE_17__* next; int const* prefix; int const* href; } ;
struct TYPE_16__ {TYPE_2__* style; } ;
struct TYPE_15__ {int nsAliases; } ;
struct TYPE_14__ {int const* href; int const* prefix; } ;


 int const* UNDEFINED_DEFAULT_NS ;
 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_NAMESPACE_DECL ;
 int const* XSLT_NAMESPACE ;
 scalar_t__ xmlHashLookup (int ,int const*) ;
 TYPE_4__* xmlNewNs (TYPE_5__*,int const*,int const*) ;
 TYPE_4__* xmlSearchNs (int ,TYPE_5__*,int const*) ;
 scalar_t__ xmlStrEqual (int const*,int const*) ;

xmlNsPtr
xsltCopyNamespaceList(xsltTransformContextPtr ctxt, xmlNodePtr node,
               xmlNsPtr cur) {
    xmlNsPtr ret = ((void*)0), tmp;
    xmlNsPtr p = ((void*)0),q;

    if (cur == ((void*)0))
 return(((void*)0));
    if (cur->type != XML_NAMESPACE_DECL)
 return(((void*)0));




    if ((node != ((void*)0)) && (node->type != XML_ELEMENT_NODE))
 node = ((void*)0);

    while (cur != ((void*)0)) {
 if (cur->type != XML_NAMESPACE_DECL)
     break;





 if (node != ((void*)0)) {
     if ((node->ns != ((void*)0)) &&
  (xmlStrEqual(node->ns->prefix, cur->prefix)) &&
 (xmlStrEqual(node->ns->href, cur->href))) {
  cur = cur->next;
  continue;
     }
     tmp = xmlSearchNs(node->doc, node, cur->prefix);
     if ((tmp != ((void*)0)) && (xmlStrEqual(tmp->href, cur->href))) {
  cur = cur->next;
  continue;
     }
 }
 if (!xmlStrEqual(cur->href, XSLT_NAMESPACE)) {
     const xmlChar *URI;

     URI = (const xmlChar *) xmlHashLookup(ctxt->style->nsAliases,
                                    cur->href);
     if (URI == UNDEFINED_DEFAULT_NS) {
  cur = cur->next;
         continue;
     }
     if (URI != ((void*)0)) {
  q = xmlNewNs(node, URI, cur->prefix);
     } else {
  q = xmlNewNs(node, cur->href, cur->prefix);
     }
     if (p == ((void*)0)) {
  ret = p = q;
     } else {
  p->next = q;
  p = q;
     }
 }

 cur = cur->next;
    }
    return(ret);
}
