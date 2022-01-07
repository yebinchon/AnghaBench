
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* xsltStylesheetPtr ;
typedef int * xsltSecurityPrefsPtr ;
typedef TYPE_3__* xsltDocumentPtr ;
typedef int * xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_10__ {struct TYPE_10__* next; TYPE_1__* doc; } ;
struct TYPE_9__ {int dict; TYPE_3__* docList; } ;
struct TYPE_8__ {int * URL; } ;


 int XSLT_LOAD_STYLESHEET ;
 int XSLT_PARSE_OPTIONS ;
 scalar_t__ xmlStrEqual (int *,int const*) ;
 int xsltCheckRead (int *,int *,int const*) ;
 int * xsltDocDefaultLoader (int const*,int ,int ,void*,int ) ;
 int * xsltGetDefaultSecurityPrefs () ;
 TYPE_3__* xsltNewStyleDocument (TYPE_2__*,int *) ;
 int xsltTransformError (int *,int *,int *,char*,int const*) ;

xsltDocumentPtr
xsltLoadStyleDocument(xsltStylesheetPtr style, const xmlChar *URI) {
    xsltDocumentPtr ret;
    xmlDocPtr doc;
    xsltSecurityPrefsPtr sec;

    if ((style == ((void*)0)) || (URI == ((void*)0)))
 return(((void*)0));




    sec = xsltGetDefaultSecurityPrefs();
    if (sec != ((void*)0)) {
 int res;

 res = xsltCheckRead(sec, ((void*)0), URI);
 if (res == 0) {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
   "xsltLoadStyleDocument: read rights for %s denied\n",
        URI);
     return(((void*)0));
 }
    }




    ret = style->docList;
    while (ret != ((void*)0)) {
 if ((ret->doc != ((void*)0)) && (ret->doc->URL != ((void*)0)) &&
     (xmlStrEqual(ret->doc->URL, URI)))
     return(ret);
 ret = ret->next;
    }

    doc = xsltDocDefaultLoader(URI, style->dict, XSLT_PARSE_OPTIONS,
                               (void *) style, XSLT_LOAD_STYLESHEET);
    if (doc == ((void*)0))
 return(((void*)0));

    ret = xsltNewStyleDocument(style, doc);
    return(ret);
}
