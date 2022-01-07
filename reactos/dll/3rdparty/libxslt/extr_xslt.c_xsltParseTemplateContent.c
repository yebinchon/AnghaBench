
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_15__ ;
typedef struct TYPE_24__ TYPE_14__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xmlNodePtr ;
typedef int const xmlChar ;
typedef TYPE_3__* xmlAttrPtr ;
struct TYPE_28__ {struct TYPE_28__* next; } ;
struct TYPE_27__ {scalar_t__ type; struct TYPE_27__* next; struct TYPE_27__* children; struct TYPE_27__* parent; TYPE_3__* properties; TYPE_15__* doc; TYPE_14__* ns; int const* content; int name; } ;
struct TYPE_26__ {int warnings; int * defaultAlias; int * nsDefs; int dict; scalar_t__ internalized; int errors; } ;
struct TYPE_25__ {int * dict; } ;
struct TYPE_24__ {int prefix; } ;


 scalar_t__ IS_XSLT_ELEM (TYPE_2__*) ;
 scalar_t__ IS_XSLT_NAME (TYPE_2__*,char*) ;
 scalar_t__ XML_CDATA_SECTION_NODE ;
 scalar_t__ XML_COMMENT_NODE ;
 scalar_t__ XML_ELEMENT_NODE ;
 scalar_t__ XML_ENTITY_DECL ;
 scalar_t__ XML_NAMESPACE_DECL ;
 scalar_t__ XML_TEXT_NODE ;
 int xmlAddPrevSibling (TYPE_2__*,TYPE_2__*) ;
 int const* xmlDictLookup (int *,int const*,int) ;
 int xmlDictOwns (int ,int const*) ;
 int xmlFree (int const*) ;
 int xmlFreeNode (TYPE_2__*) ;
 int const* xmlGetNsProp (TYPE_2__*,int const*,int *) ;
 int xmlNodeSetContent (TYPE_2__*,int *) ;
 TYPE_14__* xmlSearchNsByHref (TYPE_15__*,TYPE_2__*,int *) ;
 scalar_t__ xmlStrEqual (int const*,int const*) ;
 int xmlStringTextNoenc ;
 int xmlUnlinkNode (TYPE_2__*) ;
 scalar_t__ xsltCheckExtPrefix (TYPE_1__*,int ) ;
 int xsltCompileAttr (TYPE_1__*,TYPE_3__*) ;
 int xsltGenericDebug (int ,char*,...) ;
 int xsltGenericDebugContext ;
 int xsltStylePreCompute (TYPE_1__*,TYPE_2__*) ;
 int xsltTransformError (int *,TYPE_1__*,TYPE_2__*,char*) ;

void
xsltParseTemplateContent(xsltStylesheetPtr style, xmlNodePtr templ) {
    xmlNodePtr cur, delete;

    if ((style == ((void*)0)) || (templ == ((void*)0)) ||
        (templ->type == XML_NAMESPACE_DECL)) return;






    cur = templ->children;
    delete = ((void*)0);
    while (cur != ((void*)0)) {
 if (delete != ((void*)0)) {




     xmlUnlinkNode(delete);
     xmlFreeNode(delete);
     delete = ((void*)0);
 }
 if (IS_XSLT_ELEM(cur)) {
            xsltStylePreCompute(style, cur);

     if (IS_XSLT_NAME(cur, "text")) {







  if (cur->children != ((void*)0)) {
      xmlChar *prop;
      xmlNodePtr text = cur->children, next;
      int noesc = 0;

      prop = xmlGetNsProp(cur,
   (const xmlChar *)"disable-output-escaping",
   ((void*)0));
      if (prop != ((void*)0)) {




   if (xmlStrEqual(prop, (const xmlChar *)"yes")) {
       noesc = 1;
   } else if (!xmlStrEqual(prop,
      (const xmlChar *)"no")){
       xsltTransformError(((void*)0), style, cur,
      "xsl:text: disable-output-escaping allows only yes or no\n");
       style->warnings++;

   }
   xmlFree(prop);
      }

      while (text != ((void*)0)) {
   if (text->type == XML_COMMENT_NODE) {
       text = text->next;
       continue;
   }
   if ((text->type != XML_TEXT_NODE) &&
        (text->type != XML_CDATA_SECTION_NODE)) {
       xsltTransformError(((void*)0), style, cur,
   "xsltParseTemplateContent: xslt:text content problem\n");
       style->errors++;
       break;
   }
   if ((noesc) && (text->type != XML_CDATA_SECTION_NODE))
       text->name = xmlStringTextNoenc;
   text = text->next;
      }




      if (text == ((void*)0)) {
   text = cur->children;
   while (text != ((void*)0)) {
       if ((style->internalized) &&
           (text->content != ((void*)0)) &&
           (!xmlDictOwns(style->dict, text->content))) {




    if (text->doc->dict != ((void*)0)) {
        const xmlChar *tmp;

        tmp = xmlDictLookup(text->doc->dict,
                            text->content, -1);
        if (tmp != text->content) {
            xmlNodeSetContent(text, ((void*)0));
     text->content = (xmlChar *) tmp;
        }
    }
       }

       next = text->next;
       xmlUnlinkNode(text);
       xmlAddPrevSibling(cur, text);
       text = next;
   }
      }
  }
  delete = cur;
  goto skip_children;
     }
 }
 else if ((cur->ns != ((void*)0)) && (style->nsDefs != ((void*)0)) &&
     (xsltCheckExtPrefix(style, cur->ns->prefix)))
 {



     xsltStylePreCompute(style, cur);
 }
 else if (cur->type == XML_ELEMENT_NODE)
 {




     if ((cur->ns == ((void*)0)) && (style->defaultAlias != ((void*)0))) {
  cur->ns = xmlSearchNsByHref(cur->doc, cur,
   style->defaultAlias);
     }
     if (cur->properties != ((void*)0)) {
         xmlAttrPtr attr = cur->properties;

  while (attr != ((void*)0)) {
      xsltCompileAttr(style, attr);
      attr = attr->next;
  }
     }
 }



 if (cur->children != ((void*)0)) {
     if (cur->children->type != XML_ENTITY_DECL) {
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
     if (cur == templ) {
  cur = ((void*)0);
  break;
     }
     if (cur->next != ((void*)0)) {
  cur = cur->next;
  break;
     }
 } while (cur != ((void*)0));
    }
    if (delete != ((void*)0)) {




 xmlUnlinkNode(delete);
 xmlFreeNode(delete);
 delete = ((void*)0);
    }




    cur = templ->children;
    while (cur != ((void*)0)) {
 if ((IS_XSLT_ELEM(cur)) && (!(IS_XSLT_NAME(cur, "param"))))
     break;
 cur = cur->next;
    }




    while (cur != ((void*)0)) {
 if ((IS_XSLT_ELEM(cur)) && (IS_XSLT_NAME(cur, "param"))) {
     xmlNodePtr param = cur;

     xsltTransformError(((void*)0), style, cur,
  "xsltParseTemplateContent: ignoring misplaced param element\n");
     if (style != ((void*)0)) style->warnings++;
            cur = cur->next;
     xmlUnlinkNode(param);
     xmlFreeNode(param);
 } else
     break;
    }
}
