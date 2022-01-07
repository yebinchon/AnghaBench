
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltDocumentPtr ;
typedef int xmlXPathParserContextPtr ;
typedef TYPE_4__* xmlXPathObjectPtr ;
typedef int * xmlXPathContextPtr ;
typedef TYPE_5__* xmlURIPtr ;
typedef int * xmlNodePtr ;
typedef TYPE_6__* xmlDocPtr ;
typedef char xmlChar ;
struct TYPE_24__ {int URL; } ;
struct TYPE_23__ {int * fragment; } ;
struct TYPE_22__ {int type; } ;
struct TYPE_21__ {TYPE_6__* doc; } ;
struct TYPE_20__ {TYPE_1__* style; } ;
struct TYPE_19__ {TYPE_6__* doc; } ;
 int valuePush (int ,TYPE_4__*) ;
 int xmlFree (char*) ;
 int xmlFreeURI (TYPE_5__*) ;
 TYPE_5__* xmlParseURI (char const*) ;
 char* xmlSaveUri (TYPE_5__*) ;
 scalar_t__ xmlStrEqual (int ,char*) ;
 int xmlXPathFreeContext (int *) ;
 int xmlXPathFreeObject (TYPE_4__*) ;
 TYPE_4__* xmlXPathNewNodeSet (int *) ;
 TYPE_4__* xmlXPtrEval (char*,int *) ;
 int * xmlXPtrNewContext (TYPE_6__*,int *,int *) ;
 TYPE_3__* xsltLoadDocument (TYPE_2__*,char*) ;
 int xsltTransformError (TYPE_2__*,int *,int *,char*,...) ;
 TYPE_2__* xsltXPathGetTransformContext (int ) ;

__attribute__((used)) static void
xsltDocumentFunctionLoadDocument(xmlXPathParserContextPtr ctxt, xmlChar* URI)
{
    xsltTransformContextPtr tctxt;
    xmlURIPtr uri;
    xmlChar *fragment;
    xsltDocumentPtr idoc;
    xmlDocPtr doc;
    xmlXPathContextPtr xptrctxt = ((void*)0);
    xmlXPathObjectPtr resObj = ((void*)0);

    tctxt = xsltXPathGetTransformContext(ctxt);
    if (tctxt == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0),
     "document() : internal error tctxt == NULL\n");
 valuePush(ctxt, xmlXPathNewNodeSet(((void*)0)));
 return;
    }

    uri = xmlParseURI((const char *) URI);
    if (uri == ((void*)0)) {
 xsltTransformError(tctxt, ((void*)0), ((void*)0),
     "document() : failed to parse URI\n");
 valuePush(ctxt, xmlXPathNewNodeSet(((void*)0)));
 return;
    }




    fragment = (xmlChar *)uri->fragment;
    if (fragment != ((void*)0)) {
        xmlChar *newURI;
 uri->fragment = ((void*)0);
 newURI = xmlSaveUri(uri);
 idoc = xsltLoadDocument(tctxt, newURI);
 xmlFree(newURI);
    } else
 idoc = xsltLoadDocument(tctxt, URI);
    xmlFreeURI(uri);

    if (idoc == ((void*)0)) {
 if ((URI == ((void*)0)) ||
     (URI[0] == '#') ||
     ((tctxt->style->doc != ((void*)0)) &&
     (xmlStrEqual(tctxt->style->doc->URL, URI))))
 {



     doc = tctxt->style->doc;
 } else {
     valuePush(ctxt, xmlXPathNewNodeSet(((void*)0)));

     if (fragment != ((void*)0))
  xmlFree(fragment);

     return;
 }
    } else
 doc = idoc->doc;

    if (fragment == ((void*)0)) {
 valuePush(ctxt, xmlXPathNewNodeSet((xmlNodePtr) doc));
 return;
    }
    if (resObj == ((void*)0))
 goto out_fragment;

    switch (resObj->type) {
 case 135:
     break;
 case 130:
 case 137:
 case 134:
 case 131:
 case 133:
 case 129:
 case 128:
 case 132:
 case 136:
     xsltTransformError(tctxt, ((void*)0), ((void*)0),
  "document() : XPointer does not select a node set: #%s\n",
  fragment);
 goto out_object;
    }

    valuePush(ctxt, resObj);
    xmlFree(fragment);
    return;

out_object:
    xmlXPathFreeObject(resObj);

out_fragment:
    valuePush(ctxt, xmlXPathNewNodeSet(((void*)0)));
    xmlFree(fragment);
}
