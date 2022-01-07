
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xmlNodePtr ;
typedef scalar_t__ xmlChar ;
struct TYPE_11__ {scalar_t__ type; int * children; } ;
struct TYPE_10__ {int stripAll; int * stripSpaces; int warnings; } ;


 scalar_t__ IS_BLANK (scalar_t__) ;
 scalar_t__ XML_ELEMENT_NODE ;
 int xmlFree (scalar_t__*) ;
 scalar_t__* xmlGetNsProp (TYPE_2__*,scalar_t__ const*,int *) ;
 int xmlHashAddEntry2 (int *,scalar_t__*,scalar_t__ const*,scalar_t__*) ;
 int * xmlHashCreate (int) ;
 scalar_t__ xmlStrEqual (scalar_t__*,scalar_t__ const*) ;
 scalar_t__* xmlStrndup (scalar_t__*,int) ;
 int xsltGenericDebug (int ,char*,scalar_t__*) ;
 int xsltGenericDebugContext ;
 scalar_t__* xsltGetQNameURI (TYPE_2__*,scalar_t__**) ;
 int xsltParseContentError (TYPE_1__*,int *) ;
 int xsltTransformError (int *,TYPE_1__*,TYPE_2__*,char*) ;

__attribute__((used)) static void
xsltParseStylesheetStripSpace(xsltStylesheetPtr style, xmlNodePtr cur) {
    xmlChar *elements;
    xmlChar *element, *end;

    if ((cur == ((void*)0)) || (style == ((void*)0)) || (cur->type != XML_ELEMENT_NODE))
 return;

    elements = xmlGetNsProp(cur, (const xmlChar *)"elements", ((void*)0));
    if (elements == ((void*)0)) {
 xsltTransformError(((void*)0), style, cur,
     "xsltParseStylesheetStripSpace: missing elements attribute\n");
 if (style != ((void*)0)) style->warnings++;
 return;
    }

    if (style->stripSpaces == ((void*)0))
 style->stripSpaces = xmlHashCreate(10);
    if (style->stripSpaces == ((void*)0))
 return;

    element = elements;
    while (*element != 0) {
 while (IS_BLANK(*element)) element++;
 if (*element == 0)
     break;
        end = element;
 while ((*end != 0) && (!IS_BLANK(*end))) end++;
 element = xmlStrndup(element, end - element);
 if (element) {




     if (xmlStrEqual(element, (const xmlChar *)"*")) {
  style->stripAll = 1;
     } else {
  const xmlChar *URI;




                URI = xsltGetQNameURI(cur, &element);

  xmlHashAddEntry2(style->stripSpaces, element, URI,
           (xmlChar *) "strip");
     }
     xmlFree(element);
 }
 element = end;
    }
    xmlFree(elements);
    if (cur->children != ((void*)0)) {
 xsltParseContentError(style, cur->children);
    }
}
