
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltStylePreCompPtr ;
typedef TYPE_2__* xsltStyleItemElementPtr ;
typedef TYPE_4__* xmlNsPtr ;
typedef TYPE_5__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_19__ {scalar_t__ type; int doc; TYPE_2__* psvi; } ;
struct TYPE_18__ {int href; } ;
struct TYPE_17__ {int has_name; int has_ns; int has_use; void* use; int const* name; int const* nsPrefix; void* ns; TYPE_5__* inst; } ;
struct TYPE_16__ {int errors; int dict; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int XSLT_FUNC_ELEMENT ;
 void* xmlDictLookup (int ,int ,int) ;
 TYPE_4__* xmlSearchNs (int ,TYPE_5__*,int const*) ;
 int xmlStrncasecmp (int const*,int *,int) ;
 scalar_t__ xmlValidateQName (int const*,int ) ;
 void* xsltEvalStaticAttrValueTemplate (TYPE_1__*,TYPE_5__*,int const*,int *,int*) ;
 TYPE_2__* xsltNewStylePreComp (TYPE_1__*,int ) ;
 int * xsltSplitQName (int ,int const*,int const**) ;
 int xsltTransformError (int *,TYPE_1__*,TYPE_5__*,char*,...) ;

__attribute__((used)) static void
xsltElementComp(xsltStylesheetPtr style, xmlNodePtr inst) {



    xsltStylePreCompPtr comp;
    if ((style == ((void*)0)) || (inst == ((void*)0)) || (inst->type != XML_ELEMENT_NODE))
 return;




    comp = xsltNewStylePreComp(style, XSLT_FUNC_ELEMENT);


    if (comp == ((void*)0))
 return;
    inst->psvi = comp;
    comp->inst = inst;







    comp->name = xsltEvalStaticAttrValueTemplate(style, inst,
 (const xmlChar *)"name", ((void*)0), &comp->has_name);
    if (! comp->has_name) {
 xsltTransformError(((void*)0), style, inst,
     "xsl:element: The attribute 'name' is missing.\n");
 style->errors++;
 goto error;
    }






    comp->ns = xsltEvalStaticAttrValueTemplate(style, inst,
 (const xmlChar *)"namespace", ((void*)0), &comp->has_ns);

    if (comp->name != ((void*)0)) {
 if (xmlValidateQName(comp->name, 0)) {
     xsltTransformError(((void*)0), style, inst,
  "xsl:element: The value '%s' of the attribute 'name' is "
  "not a valid QName.\n", comp->name);
     style->errors++;
 } else {
     const xmlChar *prefix = ((void*)0), *name;

     name = xsltSplitQName(style->dict, comp->name, &prefix);
     if (comp->has_ns == 0) {
  xmlNsPtr ns;
  ns = xmlSearchNs(inst->doc, inst, prefix);
  if (ns != ((void*)0)) {
      comp->ns = xmlDictLookup(style->dict, ns->href, -1);
      comp->has_ns = 1;




                    (void)name;

  } else if (prefix != ((void*)0)) {
      xsltTransformError(((void*)0), style, inst,
   "xsl:element: The prefixed QName '%s' "
   "has no namespace binding in scope in the "
   "stylesheet; this is an error, since the namespace was "
   "not specified by the instruction itself.\n", comp->name);
      style->errors++;
  }
     }
     if ((prefix != ((void*)0)) &&
  (!xmlStrncasecmp(prefix, (xmlChar *)"xml", 3)))
     {



  comp->has_name = 0;
     }
 }
    }



    comp->use = xsltEvalStaticAttrValueTemplate(style, inst,
         (const xmlChar *)"use-attribute-sets",
         ((void*)0), &comp->has_use);

error:
    return;
}
