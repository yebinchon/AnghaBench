
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xsltStylesheetPtr ;
typedef int * xsltSecurityPrefsPtr ;
typedef int * xmlDocPtr ;
typedef int xmlChar ;


 int XSLT_LOAD_START ;
 int XSLT_PARSE_OPTIONS ;
 int xmlFreeDoc (int *) ;
 int xsltCheckRead (int *,int *,int const*) ;
 int * xsltDocDefaultLoader (int const*,int *,int ,int *,int ) ;
 int xsltGenericDebug (int ,char*,int const*) ;
 int xsltGenericDebugContext ;
 int * xsltGetDefaultSecurityPrefs () ;
 int xsltInitGlobals () ;
 int * xsltParseStylesheetDoc (int *) ;
 int xsltTransformError (int *,int *,int *,char*,int const*) ;

xsltStylesheetPtr
xsltParseStylesheetFile(const xmlChar* filename) {
    xsltSecurityPrefsPtr sec;
    xsltStylesheetPtr ret;
    xmlDocPtr doc;

    xsltInitGlobals();

    if (filename == ((void*)0))
 return(((void*)0));
    sec = xsltGetDefaultSecurityPrefs();
    if (sec != ((void*)0)) {
 int res;

 res = xsltCheckRead(sec, ((void*)0), filename);
 if (res == 0) {
     xsltTransformError(((void*)0), ((void*)0), ((void*)0),
   "xsltParseStylesheetFile: read rights for %s denied\n",
        filename);
     return(((void*)0));
 }
    }

    doc = xsltDocDefaultLoader(filename, ((void*)0), XSLT_PARSE_OPTIONS,
                               ((void*)0), XSLT_LOAD_START);
    if (doc == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0),
  "xsltParseStylesheetFile : cannot parse %s\n", filename);
 return(((void*)0));
    }
    ret = xsltParseStylesheetDoc(doc);
    if (ret == ((void*)0)) {
 xmlFreeDoc(doc);
 return(((void*)0));
    }

    return(ret);
}
