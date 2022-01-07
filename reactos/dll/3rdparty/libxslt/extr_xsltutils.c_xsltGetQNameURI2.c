
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xmlNsPtr ;
typedef TYPE_3__* xmlNodePtr ;
typedef scalar_t__ xmlChar ;
struct TYPE_12__ {int doc; } ;
struct TYPE_11__ {scalar_t__ const* href; } ;
struct TYPE_10__ {int dict; int errors; } ;


 scalar_t__ const* XML_XML_NAMESPACE ;
 scalar_t__* xmlDictLookup (int ,scalar_t__ const*,int) ;
 int xmlFree (scalar_t__*) ;
 TYPE_2__* xmlSearchNs (int ,TYPE_3__*,scalar_t__*) ;
 scalar_t__* xmlStrndup (scalar_t__ const*,int) ;
 int xsltGenericError (int ,char*,scalar_t__ const*,...) ;
 int xsltGenericErrorContext ;
 int xsltTransformError (int *,TYPE_1__*,TYPE_3__*,char*,scalar_t__*) ;

const xmlChar *
xsltGetQNameURI2(xsltStylesheetPtr style, xmlNodePtr node,
   const xmlChar **name) {
    int len = 0;
    xmlChar *qname;
    xmlNsPtr ns;

    if (name == ((void*)0))
        return(((void*)0));
    qname = (xmlChar *)*name;
    if ((qname == ((void*)0)) || (*qname == 0))
        return(((void*)0));
    if (node == ((void*)0)) {
        xsltGenericError(xsltGenericErrorContext,
                         "QName: no element for namespace lookup %s\n",
                          qname);
 *name = ((void*)0);
 return(((void*)0));
    }





    while ((qname[len] != 0) && (qname[len] != ':'))
        len++;

    if (qname[len] == 0)
        return(((void*)0));




    if ((qname[0] == 'x') && (qname[1] == 'm') &&
        (qname[2] == 'l') && (qname[3] == ':')) {
        if (qname[4] == 0)
            return(((void*)0));
        *name = xmlDictLookup(style->dict, &qname[4], -1);
        return(XML_XML_NAMESPACE);
    }

    qname = xmlStrndup(*name, len);
    ns = xmlSearchNs(node->doc, node, qname);
    if (ns == ((void*)0)) {
 if (style) {
     xsltTransformError(((void*)0), style, node,
  "No namespace bound to prefix '%s'.\n",
  qname);
     style->errors++;
 } else {
     xsltGenericError(xsltGenericErrorContext,
                "%s : no namespace bound to prefix %s\n",
  *name, qname);
 }
        *name = ((void*)0);
        xmlFree(qname);
        return(((void*)0));
    }
    *name = xmlDictLookup(style->dict, (*name)+len+1, -1);
    xmlFree(qname);
    return(ns->href);
}
