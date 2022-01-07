
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xmlNsPtr ;
typedef TYPE_2__* xmlNodePtr ;
typedef scalar_t__ xmlChar ;
struct TYPE_7__ {int doc; } ;
struct TYPE_6__ {scalar_t__ const* href; } ;


 scalar_t__ const* XML_XML_NAMESPACE ;
 int xmlFree (scalar_t__*) ;
 TYPE_1__* xmlSearchNs (int ,TYPE_2__*,scalar_t__*) ;
 scalar_t__* xmlStrdup (scalar_t__*) ;
 int xsltGenericError (int ,char*,scalar_t__*,...) ;
 int xsltGenericErrorContext ;

const xmlChar *
xsltGetQNameURI(xmlNodePtr node, xmlChar ** name)
{
    int len = 0;
    xmlChar *qname;
    xmlNsPtr ns;

    if (name == ((void*)0))
 return(((void*)0));
    qname = *name;
    if ((qname == ((void*)0)) || (*qname == 0))
 return(((void*)0));
    if (node == ((void*)0)) {
 xsltGenericError(xsltGenericErrorContext,
           "QName: no element for namespace lookup %s\n",
    qname);
 xmlFree(qname);
 *name = ((void*)0);
 return(((void*)0));
    }


    if (qname[0] == ':')
 return(((void*)0));





    while ((qname[len] != 0) && (qname[len] != ':'))
 len++;

    if (qname[len] == 0)
 return(((void*)0));




    if ((qname[0] == 'x') && (qname[1] == 'm') &&
        (qname[2] == 'l') && (qname[3] == ':')) {
 if (qname[4] == 0)
     return(((void*)0));
        *name = xmlStrdup(&qname[4]);
 xmlFree(qname);
 return(XML_XML_NAMESPACE);
    }

    qname[len] = 0;
    ns = xmlSearchNs(node->doc, node, qname);
    if (ns == ((void*)0)) {
 xsltGenericError(xsltGenericErrorContext,
  "%s:%s : no namespace bound to prefix %s\n",
           qname, &qname[len + 1], qname);
 *name = ((void*)0);
 xmlFree(qname);
 return(((void*)0));
    }
    *name = xmlStrdup(&qname[len + 1]);
    xmlFree(qname);
    return(ns->href);
}
