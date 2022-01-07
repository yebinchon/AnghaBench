
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltStylePreCompPtr ;
typedef TYPE_2__* xsltStyleItemIfPtr ;
typedef TYPE_4__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_16__ {scalar_t__ type; TYPE_2__* psvi; } ;
struct TYPE_15__ {int * test; int * comp; TYPE_4__* inst; } ;
struct TYPE_14__ {int errors; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int XSLT_FUNC_IF ;
 int XSLT_NAMESPACE ;
 int * xsltGetCNsProp (TYPE_1__*,TYPE_4__*,int const*,int ) ;
 TYPE_2__* xsltNewStylePreComp (TYPE_1__*,int ) ;
 int xsltTransformError (int *,TYPE_1__*,TYPE_4__*,char*,...) ;
 int * xsltXPathCompile (TYPE_1__*,int *) ;

__attribute__((used)) static void
xsltIfComp(xsltStylesheetPtr style, xmlNodePtr inst) {



    xsltStylePreCompPtr comp;


    if ((style == ((void*)0)) || (inst == ((void*)0)) || (inst->type != XML_ELEMENT_NODE))
 return;





    comp = xsltNewStylePreComp(style, XSLT_FUNC_IF);


    if (comp == ((void*)0))
 return;
    inst->psvi = comp;
    comp->inst = inst;

    comp->test = xsltGetCNsProp(style, inst, (const xmlChar *)"test", XSLT_NAMESPACE);
    if (comp->test == ((void*)0)) {
 xsltTransformError(((void*)0), style, inst,
      "xsl:if : test is not defined\n");
 if (style != ((void*)0)) style->errors++;
 return;
    }
    comp->comp = xsltXPathCompile(style, comp->test);
    if (comp->comp == ((void*)0)) {
 xsltTransformError(((void*)0), style, inst,
      "xsl:if : could not compile test expression '%s'\n",
                  comp->test);
 if (style != ((void*)0)) style->errors++;
    }
}
