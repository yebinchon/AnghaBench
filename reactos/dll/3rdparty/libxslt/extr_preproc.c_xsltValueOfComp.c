
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltStylePreCompPtr ;
typedef TYPE_2__* xsltStyleItemValueOfPtr ;
typedef TYPE_4__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_16__ {scalar_t__ type; TYPE_2__* psvi; } ;
struct TYPE_15__ {int noescape; int * select; int * comp; TYPE_4__* inst; } ;
struct TYPE_14__ {int errors; int warnings; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int XSLT_FUNC_VALUEOF ;
 int XSLT_NAMESPACE ;
 scalar_t__ xmlStrEqual (int const*,int const*) ;
 void* xsltGetCNsProp (TYPE_1__*,TYPE_4__*,int const*,int ) ;
 TYPE_2__* xsltNewStylePreComp (TYPE_1__*,int ) ;
 int xsltTransformError (int *,TYPE_1__*,TYPE_4__*,char*,...) ;
 int * xsltXPathCompile (TYPE_1__*,int *) ;

__attribute__((used)) static void
xsltValueOfComp(xsltStylesheetPtr style, xmlNodePtr inst) {



    xsltStylePreCompPtr comp;

    const xmlChar *prop;

    if ((style == ((void*)0)) || (inst == ((void*)0)) || (inst->type != XML_ELEMENT_NODE))
 return;




    comp = xsltNewStylePreComp(style, XSLT_FUNC_VALUEOF);


    if (comp == ((void*)0))
 return;
    inst->psvi = comp;
    comp->inst = inst;

    prop = xsltGetCNsProp(style, inst,
     (const xmlChar *)"disable-output-escaping",
   XSLT_NAMESPACE);
    if (prop != ((void*)0)) {
 if (xmlStrEqual(prop, (const xmlChar *)"yes")) {
     comp->noescape = 1;
 } else if (!xmlStrEqual(prop,
    (const xmlChar *)"no")){
     xsltTransformError(((void*)0), style, inst,
"xsl:value-of : disable-output-escaping allows only yes or no\n");
     if (style != ((void*)0)) style->warnings++;
 }
    }
    comp->select = xsltGetCNsProp(style, inst, (const xmlChar *)"select",
                         XSLT_NAMESPACE);
    if (comp->select == ((void*)0)) {
 xsltTransformError(((void*)0), style, inst,
      "xsl:value-of : select is missing\n");
 if (style != ((void*)0)) style->errors++;
 return;
    }
    comp->comp = xsltXPathCompile(style, comp->select);
    if (comp->comp == ((void*)0)) {
 xsltTransformError(((void*)0), style, inst,
      "xsl:value-of : could not compile select expression '%s'\n",
                  comp->select);
 if (style != ((void*)0)) style->errors++;
    }
}
