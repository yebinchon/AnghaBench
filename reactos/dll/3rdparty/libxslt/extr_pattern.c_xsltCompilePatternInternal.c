
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int xsltTransformContextPtr ;
typedef TYPE_2__* xsltStylesheetPtr ;
typedef TYPE_3__* xsltParserContextPtr ;
typedef TYPE_4__* xsltCompMatchPtr ;
typedef void* xmlNodePtr ;
typedef int xmlDocPtr ;
typedef char xmlChar ;
struct TYPE_19__ {int nsNr; int novar; double priority; int * pattern; TYPE_1__* steps; int ** nsList; void* node; struct TYPE_19__* next; } ;
struct TYPE_18__ {scalar_t__ error; int * base; int * cur; TYPE_4__* comp; void* elem; int doc; } ;
struct TYPE_17__ {int errors; } ;
struct TYPE_16__ {scalar_t__ op; int * value2; int * value; } ;


 scalar_t__ IS_BLANK_CH (char const) ;
 scalar_t__ XSLT_OP_ALL ;
 scalar_t__ XSLT_OP_ATTR ;
 scalar_t__ XSLT_OP_COMMENT ;
 scalar_t__ XSLT_OP_ELEM ;
 scalar_t__ XSLT_OP_END ;
 scalar_t__ XSLT_OP_NODE ;
 scalar_t__ XSLT_OP_NS ;
 scalar_t__ XSLT_OP_PI ;
 scalar_t__ XSLT_OP_TEXT ;
 int ** xmlGetNsList (int ,void*) ;
 int * xmlStrndup (char const*,int) ;
 int xsltCompileLocationPathPattern (TYPE_3__*,int) ;
 int xsltFreeCompMatchList (TYPE_4__*) ;
 int xsltFreeParserContext (TYPE_3__*) ;
 int xsltGenericDebug (int ,char*,int *,...) ;
 int xsltGenericDebugContext ;
 TYPE_4__* xsltNewCompMatch () ;
 TYPE_3__* xsltNewParserContext (TYPE_2__*,int ) ;
 int xsltReverseCompMatch (TYPE_3__*,TYPE_4__*) ;
 int xsltTransformError (int *,TYPE_2__*,void*,char*,...) ;

__attribute__((used)) static xsltCompMatchPtr
xsltCompilePatternInternal(const xmlChar *pattern, xmlDocPtr doc,
            xmlNodePtr node, xsltStylesheetPtr style,
     xsltTransformContextPtr runtime, int novar) {
    xsltParserContextPtr ctxt = ((void*)0);
    xsltCompMatchPtr element, first = ((void*)0), previous = ((void*)0);
    int current, start, end, level, j;

    if (pattern == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), node,
    "xsltCompilePattern : NULL pattern\n");
 return(((void*)0));
    }

    ctxt = xsltNewParserContext(style, runtime);
    if (ctxt == ((void*)0))
 return(((void*)0));
    ctxt->doc = doc;
    ctxt->elem = node;
    current = end = 0;
    while (pattern[current] != 0) {
 start = current;
 while (IS_BLANK_CH(pattern[current]))
     current++;
 end = current;
 level = 0;
 while ((pattern[end] != 0) && ((pattern[end] != '|') || (level != 0))) {
     if (pattern[end] == '[')
  level++;
     else if (pattern[end] == ']')
  level--;
     else if (pattern[end] == '\'') {
  end++;
  while ((pattern[end] != 0) && (pattern[end] != '\''))
      end++;
     } else if (pattern[end] == '"') {
  end++;
  while ((pattern[end] != 0) && (pattern[end] != '"'))
      end++;
     }
     if (pattern[end] == 0)
         break;
     end++;
 }
 if (current == end) {
     xsltTransformError(((void*)0), ((void*)0), node,
        "xsltCompilePattern : NULL pattern\n");
     goto error;
 }
 element = xsltNewCompMatch();
 if (element == ((void*)0)) {
     goto error;
 }
 if (first == ((void*)0))
     first = element;
 else if (previous != ((void*)0))
     previous->next = element;
 previous = element;

 ctxt->comp = element;
 ctxt->base = xmlStrndup(&pattern[start], end - start);
 if (ctxt->base == ((void*)0))
     goto error;
 ctxt->cur = &(ctxt->base)[current - start];
 element->pattern = ctxt->base;
        element->node = node;
 element->nsList = xmlGetNsList(doc, node);
 j = 0;
 if (element->nsList != ((void*)0)) {
     while (element->nsList[j] != ((void*)0))
  j++;
 }
 element->nsNr = j;
        element->novar = novar;
 element->priority = 0;
 xsltCompileLocationPathPattern(ctxt, novar);
 if (ctxt->error) {
     xsltTransformError(((void*)0), style, node,
        "xsltCompilePattern : failed to compile '%s'\n",
        element->pattern);
     if (style != ((void*)0)) style->errors++;
     goto error;
 }




 xsltReverseCompMatch(ctxt, element);




 if (element->priority == 0) {
     if (((element->steps[0].op == XSLT_OP_ELEM) ||
   (element->steps[0].op == XSLT_OP_ATTR) ||
   (element->steps[0].op == XSLT_OP_PI)) &&
  (element->steps[0].value != ((void*)0)) &&
  (element->steps[1].op == XSLT_OP_END)) {
  ;
     } else if ((element->steps[0].op == XSLT_OP_ATTR) &&
         (element->steps[0].value2 != ((void*)0)) &&
         (element->steps[1].op == XSLT_OP_END)) {
   element->priority = -0.25;
     } else if ((element->steps[0].op == XSLT_OP_NS) &&
         (element->steps[0].value != ((void*)0)) &&
         (element->steps[1].op == XSLT_OP_END)) {
   element->priority = -0.25;
     } else if ((element->steps[0].op == XSLT_OP_ATTR) &&
         (element->steps[0].value == ((void*)0)) &&
         (element->steps[0].value2 == ((void*)0)) &&
         (element->steps[1].op == XSLT_OP_END)) {
   element->priority = -0.5;
     } else if (((element->steps[0].op == XSLT_OP_PI) ||
         (element->steps[0].op == XSLT_OP_TEXT) ||
         (element->steps[0].op == XSLT_OP_ALL) ||
         (element->steps[0].op == XSLT_OP_NODE) ||
         (element->steps[0].op == XSLT_OP_COMMENT)) &&
         (element->steps[1].op == XSLT_OP_END)) {
   element->priority = -0.5;
     } else {
  element->priority = 0.5;
     }
 }





 if (pattern[end] == '|')
     end++;
 current = end;
    }
    if (end == 0) {
 xsltTransformError(((void*)0), style, node,
    "xsltCompilePattern : NULL pattern\n");
 if (style != ((void*)0)) style->errors++;
 goto error;
    }

    xsltFreeParserContext(ctxt);
    return(first);

error:
    if (ctxt != ((void*)0))
 xsltFreeParserContext(ctxt);
    if (first != ((void*)0))
 xsltFreeCompMatchList(first);
    return(((void*)0));
}
