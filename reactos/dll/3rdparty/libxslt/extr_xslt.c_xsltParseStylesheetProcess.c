
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef TYPE_1__* xsltTemplatePtr ;
typedef TYPE_2__* xsltStylesheetPtr ;
typedef int * xmlNodePtr ;
typedef TYPE_3__* xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_19__ {int children; } ;
struct TYPE_18__ {int literal_result; int forwards_compatible; TYPE_1__* templates; int warnings; int nopreproc; } ;
struct TYPE_17__ {int content; int * elem; int match; struct TYPE_17__* next; } ;


 scalar_t__ IS_XSLT_ELEM (int *) ;
 scalar_t__ IS_XSLT_NAME (int *,char*) ;
 int XSLT_NAMESPACE ;
 int * xmlDocGetRootElement (TYPE_3__*) ;
 int xmlFree (int *) ;
 int * xmlGetNsProp (int *,int const*,int ) ;
 int xmlStrEqual (int *,int const*) ;
 int xmlStrdup (int const*) ;
 int xsltAddTemplate (TYPE_2__*,TYPE_1__*,int *,int *) ;
 int xsltGenericDebug (int ,char*) ;
 int xsltGenericDebugContext ;
 int xsltInitGlobals () ;
 TYPE_1__* xsltNewTemplate () ;
 int xsltParseStylesheetExcludePrefix (TYPE_2__*,int *,int) ;
 int xsltParseStylesheetExtPrefix (TYPE_2__*,int *,int) ;
 int xsltParseStylesheetTop (TYPE_2__*,int *) ;
 int xsltParseTemplateContent (TYPE_2__*,int *) ;
 int xsltPreprocessStylesheet (TYPE_2__*,int *) ;
 int xsltTransformError (int *,TYPE_2__*,int *,char*) ;

xsltStylesheetPtr
xsltParseStylesheetProcess(xsltStylesheetPtr ret, xmlDocPtr doc) {
    xmlNodePtr cur;

    xsltInitGlobals();

    if (doc == ((void*)0))
 return(((void*)0));
    if (ret == ((void*)0))
 return(ret);






    cur = xmlDocGetRootElement(doc);
    if (cur == ((void*)0)) {
 xsltTransformError(((void*)0), ret, (xmlNodePtr) doc,
  "xsltParseStylesheetProcess : empty stylesheet\n");
 return(((void*)0));
    }

    if ((IS_XSLT_ELEM(cur)) &&
 ((IS_XSLT_NAME(cur, "stylesheet")) ||
  (IS_XSLT_NAME(cur, "transform")))) {




 ret->literal_result = 0;
 xsltParseStylesheetExcludePrefix(ret, cur, 1);
 xsltParseStylesheetExtPrefix(ret, cur, 1);
    } else {
 xsltParseStylesheetExcludePrefix(ret, cur, 0);
 xsltParseStylesheetExtPrefix(ret, cur, 0);
 ret->literal_result = 1;
    }
    if (!ret->nopreproc) {
 xsltPreprocessStylesheet(ret, cur);
    }
    if (ret->literal_result == 0) {
 xsltParseStylesheetTop(ret, cur);
    } else {
 xmlChar *prop;
 xsltTemplatePtr template;




 prop = xmlGetNsProp(cur, (const xmlChar *)"version", XSLT_NAMESPACE);
 if (prop == ((void*)0)) {
     xsltTransformError(((void*)0), ret, cur,
  "xsltParseStylesheetProcess : document is not a stylesheet\n");
     return(((void*)0));
 }






 if ((!xmlStrEqual(prop, (const xmlChar *)"1.0")) &&
            (!xmlStrEqual(prop, (const xmlChar *)"1.1"))) {
     xsltTransformError(((void*)0), ret, cur,
  "xsl:version: only 1.1 features are supported\n");
            ret->forwards_compatible = 1;
     ret->warnings++;
 }
 xmlFree(prop);




 template = xsltNewTemplate();
 if (template == ((void*)0)) {
     return(((void*)0));
 }
 template->next = ret->templates;
 ret->templates = template;
 template->match = xmlStrdup((const xmlChar *)"/");




 xsltParseTemplateContent(ret, (xmlNodePtr) doc);
 template->elem = (xmlNodePtr) doc;
 template->content = doc->children;
 xsltAddTemplate(ret, template, ((void*)0), ((void*)0));
 ret->literal_result = 1;
    }

    return(ret);
}
