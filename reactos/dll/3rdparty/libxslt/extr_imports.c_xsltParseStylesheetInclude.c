
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltStyleItemIncludePtr ;
typedef TYPE_3__* xsltDocumentPtr ;
typedef TYPE_4__* xmlNodePtr ;
typedef TYPE_5__* xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_23__ {int URL; } ;
struct TYPE_22__ {int * psvi; } ;
struct TYPE_21__ {int preproc; struct TYPE_21__* includes; TYPE_5__* doc; } ;
struct TYPE_20__ {TYPE_3__* include; } ;
struct TYPE_19__ {int nopreproc; TYPE_5__* doc; TYPE_3__* includes; int errors; } ;


 scalar_t__ IS_XSLT_ELEM_FAST (TYPE_4__*) ;
 int * xmlBuildURI (int *,int *) ;
 int xmlFree (int *) ;
 int * xmlGetNsProp (TYPE_4__*,int const*,int *) ;
 int * xmlNodeGetBase (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ xmlStrEqual (int ,int *) ;
 TYPE_3__* xsltLoadStyleDocument (TYPE_1__*,int *) ;
 TYPE_1__* xsltParseStylesheetProcess (TYPE_1__*,TYPE_5__*) ;
 int xsltTransformError (int *,TYPE_1__*,TYPE_4__*,char*,...) ;

int
xsltParseStylesheetInclude(xsltStylesheetPtr style, xmlNodePtr cur) {
    int ret = -1;
    xmlDocPtr oldDoc;
    xmlChar *base = ((void*)0);
    xmlChar *uriRef = ((void*)0);
    xmlChar *URI = ((void*)0);
    xsltStylesheetPtr result;
    xsltDocumentPtr include;
    xsltDocumentPtr docptr;
    int oldNopreproc;

    if ((cur == ((void*)0)) || (style == ((void*)0)))
 return (ret);

    uriRef = xmlGetNsProp(cur, (const xmlChar *)"href", ((void*)0));
    if (uriRef == ((void*)0)) {
 xsltTransformError(((void*)0), style, cur,
     "xsl:include : missing href attribute\n");
 goto error;
    }

    base = xmlNodeGetBase(style->doc, cur);
    URI = xmlBuildURI(uriRef, base);
    if (URI == ((void*)0)) {
 xsltTransformError(((void*)0), style, cur,
     "xsl:include : invalid URI reference %s\n", uriRef);
 goto error;
    }





    docptr = style->includes;
    while (docptr != ((void*)0)) {
        if (xmlStrEqual(docptr->doc->URL, URI)) {
     xsltTransformError(((void*)0), style, cur,
         "xsl:include : recursion detected on included URL %s\n", URI);
     goto error;
 }
 docptr = docptr->includes;
    }

    include = xsltLoadStyleDocument(style, URI);
    if (include == ((void*)0)) {
 xsltTransformError(((void*)0), style, cur,
     "xsl:include : unable to load %s\n", URI);
 goto error;
    }
    oldDoc = style->doc;
    style->doc = include->doc;

    include->includes = style->includes;
    style->includes = include;
    oldNopreproc = style->nopreproc;
    style->nopreproc = include->preproc;






    result = xsltParseStylesheetProcess(style, include->doc);
    style->nopreproc = oldNopreproc;
    include->preproc = 1;
    style->includes = include->includes;
    style->doc = oldDoc;
    if (result == ((void*)0)) {
 ret = -1;
 goto error;
    }
    ret = 0;

error:
    if (uriRef != ((void*)0))
 xmlFree(uriRef);
    if (base != ((void*)0))
 xmlFree(base);
    if (URI != ((void*)0))
 xmlFree(URI);

    return (ret);
}
