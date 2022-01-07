
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef int * xsltSecurityPrefsPtr ;
typedef int * xmlNodePtr ;
typedef int * xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_10__ {int URL; } ;
struct TYPE_9__ {struct TYPE_9__* parent; struct TYPE_9__* imports; struct TYPE_9__* next; int dict; TYPE_8__* doc; } ;


 int XSLT_LOAD_STYLESHEET ;
 int XSLT_PARSE_OPTIONS ;
 int * xmlBuildURI (int *,int *) ;
 int xmlFree (int *) ;
 int xmlFreeDoc (int *) ;
 int * xmlGetNsProp (int *,int const*,int *) ;
 int * xmlNodeGetBase (TYPE_8__*,int *) ;
 scalar_t__ xmlStrEqual (int ,int *) ;
 int xsltCheckRead (int *,int *,int *) ;
 int * xsltDocDefaultLoader (int *,int ,int ,void*,int ) ;
 int xsltFixImportedCompSteps (TYPE_1__*,TYPE_1__*) ;
 int * xsltGetDefaultSecurityPrefs () ;
 TYPE_1__* xsltParseStylesheetImportedDoc (int *,TYPE_1__*) ;
 int xsltTransformError (int *,TYPE_1__*,int *,char*,...) ;

int
xsltParseStylesheetImport(xsltStylesheetPtr style, xmlNodePtr cur) {
    int ret = -1;
    xmlDocPtr import = ((void*)0);
    xmlChar *base = ((void*)0);
    xmlChar *uriRef = ((void*)0);
    xmlChar *URI = ((void*)0);
    xsltStylesheetPtr res;
    xsltSecurityPrefsPtr sec;

    if ((cur == ((void*)0)) || (style == ((void*)0)))
 return (ret);

    uriRef = xmlGetNsProp(cur, (const xmlChar *)"href", ((void*)0));
    if (uriRef == ((void*)0)) {
 xsltTransformError(((void*)0), style, cur,
     "xsl:import : missing href attribute\n");
 goto error;
    }

    base = xmlNodeGetBase(style->doc, cur);
    URI = xmlBuildURI(uriRef, base);
    if (URI == ((void*)0)) {
 xsltTransformError(((void*)0), style, cur,
     "xsl:import : invalid URI reference %s\n", uriRef);
 goto error;
    }

    res = style;
    while (res != ((void*)0)) {
        if (res->doc == ((void*)0))
     break;
 if (xmlStrEqual(res->doc->URL, URI)) {
     xsltTransformError(((void*)0), style, cur,
        "xsl:import : recursion detected on imported URL %s\n", URI);
     goto error;
 }
 res = res->parent;
    }




    sec = xsltGetDefaultSecurityPrefs();
    if (sec != ((void*)0)) {
 int secres;

 secres = xsltCheckRead(sec, ((void*)0), URI);
 if (secres == 0) {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
   "xsl:import: read rights for %s denied\n",
        URI);
     goto error;
 }
    }

    import = xsltDocDefaultLoader(URI, style->dict, XSLT_PARSE_OPTIONS,
                                  (void *) style, XSLT_LOAD_STYLESHEET);
    if (import == ((void*)0)) {
 xsltTransformError(((void*)0), style, cur,
     "xsl:import : unable to load %s\n", URI);
 goto error;
    }

    res = xsltParseStylesheetImportedDoc(import, style);
    if (res != ((void*)0)) {
 res->next = style->imports;
 style->imports = res;
 if (style->parent == ((void*)0)) {
     xsltFixImportedCompSteps(style, res);
 }
 ret = 0;
    } else {
 xmlFreeDoc(import);
 }

error:
    if (uriRef != ((void*)0))
 xmlFree(uriRef);
    if (base != ((void*)0))
 xmlFree(base);
    if (URI != ((void*)0))
 xmlFree(URI);

    return (ret);
}
