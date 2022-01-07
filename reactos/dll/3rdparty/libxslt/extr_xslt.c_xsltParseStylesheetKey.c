
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_13__ {scalar_t__ type; int * children; } ;
struct TYPE_12__ {int errors; } ;


 scalar_t__ XML_ELEMENT_NODE ;
 int xmlFree (int *) ;
 int * xmlGetNsProp (TYPE_2__*,int const*,int *) ;
 int * xmlStrdup (int const*) ;
 int xsltAddKey (TYPE_1__*,int *,int *,int *,int *,TYPE_2__*) ;
 int xsltGenericDebug (int ,char*,int *) ;
 int xsltGenericDebugContext ;
 int * xsltGetQNameURI (TYPE_2__*,int **) ;
 int xsltParseContentError (TYPE_1__*,int *) ;
 int xsltTransformError (int *,TYPE_1__*,TYPE_2__*,char*) ;

__attribute__((used)) static void
xsltParseStylesheetKey(xsltStylesheetPtr style, xmlNodePtr key) {
    xmlChar *prop = ((void*)0);
    xmlChar *use = ((void*)0);
    xmlChar *match = ((void*)0);
    xmlChar *name = ((void*)0);
    xmlChar *nameURI = ((void*)0);

    if ((style == ((void*)0)) || (key == ((void*)0)) || (key->type != XML_ELEMENT_NODE))
 return;




    prop = xmlGetNsProp(key, (const xmlChar *)"name", ((void*)0));
    if (prop != ((void*)0)) {
        const xmlChar *URI;




 URI = xsltGetQNameURI(key, &prop);
 if (prop == ((void*)0)) {
     if (style != ((void*)0)) style->errors++;
     goto error;
 } else {
     name = prop;
     if (URI != ((void*)0))
  nameURI = xmlStrdup(URI);
 }




    } else {
 xsltTransformError(((void*)0), style, key,
     "xsl:key : error missing name\n");
 if (style != ((void*)0)) style->errors++;
 goto error;
    }

    match = xmlGetNsProp(key, (const xmlChar *)"match", ((void*)0));
    if (match == ((void*)0)) {
 xsltTransformError(((void*)0), style, key,
     "xsl:key : error missing match\n");
 if (style != ((void*)0)) style->errors++;
 goto error;
    }

    use = xmlGetNsProp(key, (const xmlChar *)"use", ((void*)0));
    if (use == ((void*)0)) {
 xsltTransformError(((void*)0), style, key,
     "xsl:key : error missing use\n");
 if (style != ((void*)0)) style->errors++;
 goto error;
    }




    xsltAddKey(style, name, nameURI, match, use, key);


error:
    if (use != ((void*)0))
 xmlFree(use);
    if (match != ((void*)0))
 xmlFree(match);
    if (name != ((void*)0))
 xmlFree(name);
    if (nameURI != ((void*)0))
 xmlFree(nameURI);

    if (key->children != ((void*)0)) {
 xsltParseContentError(style, key->children);
    }
}
