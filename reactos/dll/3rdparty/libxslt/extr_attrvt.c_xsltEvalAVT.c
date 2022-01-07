
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * xsltTransformContextPtr ;
typedef TYPE_1__* xsltAttrVTPtr ;
typedef scalar_t__ xmlXPathCompExprPtr ;
typedef int * xmlNodePtr ;
typedef int const xmlChar ;
struct TYPE_2__ {int strstart; int nb_seg; int nsList; int nsNr; scalar_t__* segments; } ;


 int xmlFree (int const*) ;
 int const* xmlStrcat (int const*,int const*) ;
 int const* xsltEvalXPathStringNs (int *,scalar_t__,int ,int ) ;

xmlChar *
xsltEvalAVT(xsltTransformContextPtr ctxt, void *avt, xmlNodePtr node) {
    xmlChar *ret = ((void*)0), *tmp;
    xmlXPathCompExprPtr comp;
    xsltAttrVTPtr cur = (xsltAttrVTPtr) avt;
    int i;
    int str;

    if ((ctxt == ((void*)0)) || (avt == ((void*)0)) || (node == ((void*)0)))
        return(((void*)0));
    str = cur->strstart;
    for (i = 0;i < cur->nb_seg;i++) {
        if (str) {
     ret = xmlStrcat(ret, (const xmlChar *) cur->segments[i]);
 } else {
     comp = (xmlXPathCompExprPtr) cur->segments[i];
     tmp = xsltEvalXPathStringNs(ctxt, comp, cur->nsNr, cur->nsList);
     if (tmp != ((void*)0)) {
         if (ret != ((void*)0)) {
      ret = xmlStrcat(ret, tmp);
      xmlFree(tmp);
  } else {
      ret = tmp;
  }
     }
 }
 str = !str;
    }
    return(ret);
}
