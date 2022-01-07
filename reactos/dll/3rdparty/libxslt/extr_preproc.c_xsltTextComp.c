
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltStylePreCompPtr ;
typedef TYPE_2__* xsltStyleItemTextPtr ;
typedef TYPE_4__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_15__ {scalar_t__ type; TYPE_2__* psvi; } ;
struct TYPE_14__ {int noescape; TYPE_4__* inst; } ;
struct TYPE_13__ {int warnings; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int XSLT_FUNC_TEXT ;
 int XSLT_NAMESPACE ;
 scalar_t__ xmlStrEqual (int const*,int const*) ;
 int * xsltGetCNsProp (TYPE_1__*,TYPE_4__*,int const*,int ) ;
 TYPE_2__* xsltNewStylePreComp (TYPE_1__*,int ) ;
 int xsltTransformError (int *,TYPE_1__*,TYPE_4__*,char*) ;

__attribute__((used)) static void
xsltTextComp(xsltStylesheetPtr style, xmlNodePtr inst) {



    xsltStylePreCompPtr comp;

    const xmlChar *prop;

    if ((style == ((void*)0)) || (inst == ((void*)0)) || (inst->type != XML_ELEMENT_NODE))
 return;




    comp = xsltNewStylePreComp(style, XSLT_FUNC_TEXT);

    if (comp == ((void*)0))
 return;
    inst->psvi = comp;
    comp->inst = inst;
    comp->noescape = 0;

    prop = xsltGetCNsProp(style, inst,
     (const xmlChar *)"disable-output-escaping",
   XSLT_NAMESPACE);
    if (prop != ((void*)0)) {
 if (xmlStrEqual(prop, (const xmlChar *)"yes")) {
     comp->noescape = 1;
 } else if (!xmlStrEqual(prop,
     (const xmlChar *)"no")){
     xsltTransformError(((void*)0), style, inst,
  "xsl:text: disable-output-escaping allows only yes or no\n");
     if (style != ((void*)0)) style->warnings++;
 }
    }
}
