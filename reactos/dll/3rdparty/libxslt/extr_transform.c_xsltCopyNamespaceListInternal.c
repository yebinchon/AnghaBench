
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_2__* xmlNsPtr ;
typedef TYPE_3__* xmlNodePtr ;
struct TYPE_13__ {scalar_t__ type; int doc; TYPE_1__* ns; } ;
struct TYPE_12__ {scalar_t__ type; struct TYPE_12__* next; int prefix; int href; } ;
struct TYPE_11__ {int href; int prefix; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_NAMESPACE_DECL ;
 TYPE_2__* xmlNewNs (TYPE_3__*,int ,int ) ;
 TYPE_2__* xmlSearchNs (int ,TYPE_3__*,int ) ;
 scalar_t__ xmlStrEqual (int ,int ) ;

__attribute__((used)) static xmlNsPtr
xsltCopyNamespaceListInternal(xmlNodePtr elem, xmlNsPtr ns) {
    xmlNsPtr ret = ((void*)0);
    xmlNsPtr p = ((void*)0), q, luNs;

    if (ns == ((void*)0))
 return(((void*)0));



    if ((elem != ((void*)0)) && (elem->type != XML_ELEMENT_NODE))
 elem = ((void*)0);

    do {
 if (ns->type != XML_NAMESPACE_DECL)
     break;



 if (elem != ((void*)0)) {
     if ((elem->ns != ((void*)0)) &&
  xmlStrEqual(elem->ns->prefix, ns->prefix) &&
  xmlStrEqual(elem->ns->href, ns->href))
     {
  ns = ns->next;
  continue;
     }
     luNs = xmlSearchNs(elem->doc, elem, ns->prefix);
     if ((luNs != ((void*)0)) && (xmlStrEqual(luNs->href, ns->href)))
     {
  ns = ns->next;
  continue;
     }
 }
 q = xmlNewNs(elem, ns->href, ns->prefix);
 if (p == ((void*)0)) {
     ret = p = q;
 } else if (q != ((void*)0)) {
     p->next = q;
     p = q;
 }
 ns = ns->next;
    } while (ns != ((void*)0));
    return(ret);
}
