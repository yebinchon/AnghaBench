
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_3__* xmlNsPtr ;
typedef TYPE_4__* xmlNodePtr ;
typedef TYPE_5__* xmlDocPtr ;
typedef int xmlChar ;
typedef TYPE_6__* xmlAttributePtr ;
typedef TYPE_7__* xmlAttrPtr ;
struct TYPE_21__ {struct TYPE_21__* next; int children; TYPE_2__* ns; int name; } ;
struct TYPE_20__ {int * defaultValue; int * prefix; } ;
struct TYPE_19__ {int * extSubset; int * intSubset; } ;
struct TYPE_18__ {scalar_t__ type; int name; TYPE_5__* doc; TYPE_1__* ns; TYPE_7__* properties; } ;
struct TYPE_17__ {int href; } ;
struct TYPE_16__ {int href; } ;
struct TYPE_15__ {int href; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_NAMESPACE_DECL ;
 TYPE_6__* xmlGetDtdAttrDesc (int *,int ,int const*) ;
 int * xmlGetProp (TYPE_4__*,int const*) ;
 int * xmlNodeListGetString (TYPE_5__*,int ,int) ;
 TYPE_3__* xmlSearchNs (TYPE_5__*,TYPE_4__*,int *) ;
 scalar_t__ xmlStrEqual (int ,int const*) ;
 int * xmlStrdup (int *) ;

xmlChar *
xsltGetNsProp(xmlNodePtr node, const xmlChar *name, const xmlChar *nameSpace) {
    xmlAttrPtr prop;
    xmlDocPtr doc;
    xmlNsPtr ns;

    if (node == ((void*)0))
 return(((void*)0));

    if (nameSpace == ((void*)0))
        return xmlGetProp(node, name);

    if (node->type == XML_NAMESPACE_DECL)
        return(((void*)0));
    if (node->type == XML_ELEMENT_NODE)
 prop = node->properties;
    else
 prop = ((void*)0);
    while (prop != ((void*)0)) {





        if ((xmlStrEqual(prop->name, name)) &&
     (((prop->ns == ((void*)0)) && (node->ns != ((void*)0)) &&
       (xmlStrEqual(node->ns->href, nameSpace))) ||
      ((prop->ns != ((void*)0)) &&
       (xmlStrEqual(prop->ns->href, nameSpace))))) {
     xmlChar *ret;

     ret = xmlNodeListGetString(node->doc, prop->children, 1);
     if (ret == ((void*)0)) return(xmlStrdup((xmlChar *)""));
     return(ret);
        }
 prop = prop->next;
    }





    doc = node->doc;
    if (doc != ((void*)0)) {
        if (doc->intSubset != ((void*)0)) {
     xmlAttributePtr attrDecl;

     attrDecl = xmlGetDtdAttrDesc(doc->intSubset, node->name, name);
     if ((attrDecl == ((void*)0)) && (doc->extSubset != ((void*)0)))
  attrDecl = xmlGetDtdAttrDesc(doc->extSubset, node->name, name);

     if ((attrDecl != ((void*)0)) && (attrDecl->prefix != ((void*)0))) {



  ns = xmlSearchNs(doc, node, attrDecl->prefix);
  if ((ns != ((void*)0)) && (xmlStrEqual(ns->href, nameSpace)))
      return(xmlStrdup(attrDecl->defaultValue));
     }
 }
    }
    return(((void*)0));
}
