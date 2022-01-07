
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_16__ ;


typedef TYPE_2__* xsltStylesheetPtr ;
typedef TYPE_3__* xmlNsPtr ;
typedef TYPE_4__* xmlNodePtr ;
typedef int xmlChar ;
typedef TYPE_5__* xmlAttrPtr ;
struct TYPE_26__ {struct TYPE_26__* next; TYPE_4__* children; } ;
struct TYPE_25__ {scalar_t__ type; struct TYPE_25__* next; struct TYPE_25__* parent; struct TYPE_25__* children; TYPE_1__* ns; int * content; TYPE_3__* nsDef; TYPE_16__* doc; TYPE_5__* properties; } ;
struct TYPE_24__ {struct TYPE_24__* next; int href; int * prefix; } ;
struct TYPE_23__ {scalar_t__ exclPrefixNr; scalar_t__ doc; int * dict; int * exclPrefixTab; scalar_t__ internalized; } ;
struct TYPE_22__ {int href; } ;
struct TYPE_21__ {int * dict; } ;


 scalar_t__ IS_BLANK_NODE (TYPE_4__*) ;
 scalar_t__ IS_XSLT_ELEM (TYPE_4__*) ;
 scalar_t__ IS_XSLT_NAME (TYPE_4__*,char*) ;
 scalar_t__ XML_CDATA_SECTION_NODE ;
 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_ENTITY_DECL ;
 scalar_t__ XML_ENTITY_NODE ;
 scalar_t__ XML_ENTITY_REF_NODE ;
 scalar_t__ XML_TEXT_NODE ;
 int XSLT_NAMESPACE ;
 int exclPrefixPop (TYPE_2__*) ;
 scalar_t__ xmlDictLookup (int *,int *,int) ;
 int xmlDictOwns (int *,int *) ;
 TYPE_4__* xmlDocGetRootElement (TYPE_16__*) ;
 int xmlFreeNode (TYPE_4__*) ;
 int xmlNodeGetSpacePreserve (TYPE_4__*) ;
 int xmlNodeSetContent (TYPE_4__*,int *) ;
 scalar_t__ xmlStrEqual (int ,int ) ;
 int xmlUnlinkNode (TYPE_4__*) ;
 int xsltCheckExtURI (TYPE_2__*,int ) ;
 int xsltGenericDebug (int ,char*) ;
 int xsltGenericDebugContext ;
 int xsltParseStylesheetExcludePrefix (TYPE_2__*,TYPE_4__*,int ) ;

__attribute__((used)) static void
xsltPreprocessStylesheet(xsltStylesheetPtr style, xmlNodePtr cur)
{
    xmlNodePtr deleteNode, styleelem;
    int internalize = 0;

    if ((style == ((void*)0)) || (cur == ((void*)0)))
        return;

    if ((cur->doc != ((void*)0)) && (style->dict != ((void*)0)) &&
        (cur->doc->dict == style->dict))
 internalize = 1;
    else
        style->internalized = 0;

    if ((cur != ((void*)0)) && (IS_XSLT_ELEM(cur)) &&
        (IS_XSLT_NAME(cur, "stylesheet"))) {
 styleelem = cur;
    } else {
        styleelem = ((void*)0);
    }






    deleteNode = ((void*)0);
    while (cur != ((void*)0)) {
 if (deleteNode != ((void*)0)) {




     xmlUnlinkNode(deleteNode);
     xmlFreeNode(deleteNode);
     deleteNode = ((void*)0);
 }
 if (cur->type == XML_ELEMENT_NODE) {
     int exclPrefixes;



     if ((internalize) && (cur->properties != ((void*)0))) {
         xmlAttrPtr attr = cur->properties;
  xmlNodePtr txt;

  while (attr != ((void*)0)) {
      txt = attr->children;
      if ((txt != ((void*)0)) && (txt->type == XML_TEXT_NODE) &&
          (txt->content != ((void*)0)) &&
   (!xmlDictOwns(style->dict, txt->content)))
      {
   xmlChar *tmp;






   tmp = (xmlChar *) xmlDictLookup(style->dict,
                                   txt->content, -1);
   if (tmp != txt->content) {
       xmlNodeSetContent(txt, ((void*)0));
       txt->content = tmp;
   }
      }
      attr = attr->next;
  }
     }
     if (IS_XSLT_ELEM(cur)) {
  exclPrefixes = 0;
  if (IS_XSLT_NAME(cur, "text")) {
      for (;exclPrefixes > 0;exclPrefixes--)
   exclPrefixPop(style);
      goto skip_children;
  }
     } else {
  exclPrefixes = xsltParseStylesheetExcludePrefix(style, cur, 0);
     }

     if ((cur->nsDef != ((void*)0)) && (style->exclPrefixNr > 0)) {
  xmlNsPtr ns = cur->nsDef, prev = ((void*)0), next;
  xmlNodePtr root = ((void*)0);
  int i, moved;

  root = xmlDocGetRootElement(cur->doc);
  if ((root != ((void*)0)) && (root != cur)) {
      while (ns != ((void*)0)) {
   moved = 0;
   next = ns->next;
   for (i = 0;i < style->exclPrefixNr;i++) {
       if ((ns->prefix != ((void*)0)) &&
           (xmlStrEqual(ns->href,
          style->exclPrefixTab[i]))) {





    if (prev == ((void*)0)) {
        cur->nsDef = ns->next;
    } else {
        prev->next = ns->next;
    }
    ns->next = root->nsDef;
    root->nsDef = ns;
    moved = 1;
    break;
       }
   }
   if (moved == 0)
       prev = ns;
   ns = next;
      }
  }
     }




     if (exclPrefixes > 0) {
  xsltPreprocessStylesheet(style, cur->children);
  for (;exclPrefixes > 0;exclPrefixes--)
      exclPrefixPop(style);
  goto skip_children;
     }
 } else if (cur->type == XML_TEXT_NODE) {
     if (IS_BLANK_NODE(cur)) {
  if (xmlNodeGetSpacePreserve(cur->parent) != 1) {
      deleteNode = cur;
  }
     } else if ((cur->content != ((void*)0)) && (internalize) &&
                (!xmlDictOwns(style->dict, cur->content))) {
  xmlChar *tmp;






  tmp = (xmlChar *) xmlDictLookup(style->dict, cur->content, -1);
  xmlNodeSetContent(cur, ((void*)0));
  cur->content = tmp;
     }
 } else if ((cur->type != XML_ELEMENT_NODE) &&
     (cur->type != XML_CDATA_SECTION_NODE)) {
     deleteNode = cur;
     goto skip_children;
 }






 if ((cur->type == XML_ELEMENT_NODE) && (cur->ns != ((void*)0)) &&
     (styleelem != ((void*)0)) && (cur->parent == styleelem) &&
     (!xmlStrEqual(cur->ns->href, XSLT_NAMESPACE)) &&
     (!xsltCheckExtURI(style, cur->ns->href))) {
     goto skip_children;
 } else if (cur->children != ((void*)0)) {
     if ((cur->children->type != XML_ENTITY_DECL) &&
  (cur->children->type != XML_ENTITY_REF_NODE) &&
  (cur->children->type != XML_ENTITY_NODE)) {
  cur = cur->children;
  continue;
     }
 }

skip_children:
 if (cur->next != ((void*)0)) {
     cur = cur->next;
     continue;
 }
 do {

     cur = cur->parent;
     if (cur == ((void*)0))
  break;
     if (cur == (xmlNodePtr) style->doc) {
  cur = ((void*)0);
  break;
     }
     if (cur->next != ((void*)0)) {
  cur = cur->next;
  break;
     }
 } while (cur != ((void*)0));
    }
    if (deleteNode != ((void*)0)) {




 xmlUnlinkNode(deleteNode);
 xmlFreeNode(deleteNode);
    }
}
