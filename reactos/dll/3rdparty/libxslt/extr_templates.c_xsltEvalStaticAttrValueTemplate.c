
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_6__ {int dict; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int * xmlDictLookup (int ,int *,int) ;
 int xmlFree (int *) ;
 int * xmlStrchr (int *,char) ;
 int * xsltGetNsProp (TYPE_2__*,int const*,int const*) ;

const xmlChar *
xsltEvalStaticAttrValueTemplate(xsltStylesheetPtr style, xmlNodePtr inst,
   const xmlChar *name, const xmlChar *ns, int *found) {
    const xmlChar *ret;
    xmlChar *expr;

    if ((style == ((void*)0)) || (inst == ((void*)0)) || (name == ((void*)0)) ||
        (inst->type != XML_ELEMENT_NODE))
 return(((void*)0));

    expr = xsltGetNsProp(inst, name, ns);
    if (expr == ((void*)0)) {
 *found = 0;
 return(((void*)0));
    }
    *found = 1;

    ret = xmlStrchr(expr, '{');
    if (ret != ((void*)0)) {
 xmlFree(expr);
 return(((void*)0));
    }
    ret = xmlDictLookup(style->dict, expr, -1);
    xmlFree(expr);
    return(ret);
}
