
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xmlNsPtr ;
typedef TYPE_3__* xmlNodePtr ;
typedef scalar_t__ xmlChar ;
struct TYPE_14__ {scalar_t__ type; } ;
struct TYPE_13__ {int href; } ;
struct TYPE_12__ {int warnings; int doc; } ;


 scalar_t__ IS_BLANK (scalar_t__) ;
 scalar_t__ XML_ELEMENT_NODE ;
 int * XSLT_NAMESPACE ;
 int xmlFree (scalar_t__*) ;
 scalar_t__* xmlGetNsProp (TYPE_3__*,scalar_t__ const*,int *) ;
 TYPE_2__* xmlSearchNs (int ,TYPE_3__*,scalar_t__*) ;
 scalar_t__ xmlStrEqual (scalar_t__*,scalar_t__ const*) ;
 scalar_t__* xmlStrndup (scalar_t__*,int) ;
 int xsltGenericDebug (int ,char*,scalar_t__*) ;
 int xsltGenericDebugContext ;
 int xsltRegisterExtPrefix (TYPE_1__*,scalar_t__*,int ) ;
 int xsltTransformError (int *,TYPE_1__*,TYPE_3__*,char*,scalar_t__*) ;

__attribute__((used)) static void
xsltParseStylesheetExtPrefix(xsltStylesheetPtr style, xmlNodePtr cur,
        int isXsltElem) {
    xmlChar *prefixes;
    xmlChar *prefix, *end;

    if ((cur == ((void*)0)) || (style == ((void*)0)) || (cur->type != XML_ELEMENT_NODE))
 return;

    if (isXsltElem) {

 prefixes = xmlGetNsProp(cur,
     (const xmlChar *)"extension-element-prefixes", ((void*)0));
    } else {

 prefixes = xmlGetNsProp(cur,
     (const xmlChar *)"extension-element-prefixes", XSLT_NAMESPACE);
    }
    if (prefixes == ((void*)0)) {
 return;
    }

    prefix = prefixes;
    while (*prefix != 0) {
 while (IS_BLANK(*prefix)) prefix++;
 if (*prefix == 0)
     break;
        end = prefix;
 while ((*end != 0) && (!IS_BLANK(*end))) end++;
 prefix = xmlStrndup(prefix, end - prefix);
 if (prefix) {
     xmlNsPtr ns;

     if (xmlStrEqual(prefix, (const xmlChar *)"#default"))
  ns = xmlSearchNs(style->doc, cur, ((void*)0));
     else
  ns = xmlSearchNs(style->doc, cur, prefix);
     if (ns == ((void*)0)) {
  xsltTransformError(((void*)0), style, cur,
     "xsl:extension-element-prefix : undefined namespace %s\n",
                          prefix);
  if (style != ((void*)0)) style->warnings++;
     } else {




  xsltRegisterExtPrefix(style, prefix, ns->href);
     }
     xmlFree(prefix);
 }
 prefix = end;
    }
    xmlFree(prefixes);
}
