
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltDocumentPtr ;
typedef int * xmlDocPtr ;
typedef int xmlChar ;
struct TYPE_14__ {struct TYPE_14__* next; TYPE_1__* doc; } ;
struct TYPE_13__ {scalar_t__ xinclude; scalar_t__ debugStatus; int parserOptions; int dict; TYPE_3__* docList; int * sec; } ;
struct TYPE_12__ {int * URL; } ;


 scalar_t__ XSLT_DEBUG_NONE ;
 int XSLT_LOAD_DOCUMENT ;
 int xmlDocGetRootElement (int *) ;
 scalar_t__ xmlStrEqual (int *,int const*) ;
 int xmlXIncludeProcess (int *) ;
 int xmlXIncludeProcessFlags (int *,int ) ;
 int xmlXPathOrderDocElems (int *) ;
 int xsltApplyStripSpaces (TYPE_2__*,int ) ;
 int xsltCheckRead (int *,TYPE_2__*,int const*) ;
 int * xsltDocDefaultLoader (int const*,int ,int ,void*,int ) ;
 scalar_t__ xsltNeedElemSpaceHandling (TYPE_2__*) ;
 TYPE_3__* xsltNewDocument (TYPE_2__*,int *) ;
 int xsltTransformError (TYPE_2__*,int *,int *,char*,int const*) ;

xsltDocumentPtr
xsltLoadDocument(xsltTransformContextPtr ctxt, const xmlChar *URI) {
    xsltDocumentPtr ret;
    xmlDocPtr doc;

    if ((ctxt == ((void*)0)) || (URI == ((void*)0)))
 return(((void*)0));




    if (ctxt->sec != ((void*)0)) {
 int res;

 res = xsltCheckRead(ctxt->sec, ctxt, URI);
 if (res == 0) {
     xsltTransformError(ctxt, ((void*)0), ((void*)0),
   "xsltLoadDocument: read rights for %s denied\n",
        URI);
     return(((void*)0));
 }
    }




    ret = ctxt->docList;
    while (ret != ((void*)0)) {
 if ((ret->doc != ((void*)0)) && (ret->doc->URL != ((void*)0)) &&
     (xmlStrEqual(ret->doc->URL, URI)))
     return(ret);
 ret = ret->next;
    }

    doc = xsltDocDefaultLoader(URI, ctxt->dict, ctxt->parserOptions,
                               (void *) ctxt, XSLT_LOAD_DOCUMENT);

    if (doc == ((void*)0))
 return(((void*)0));

    if (ctxt->xinclude != 0) {







 xsltTransformError(ctxt, ((void*)0), ((void*)0),
     "xsltLoadDocument(%s) : XInclude processing not compiled in\n",
                  URI);

    }



    if (xsltNeedElemSpaceHandling(ctxt))
 xsltApplyStripSpaces(ctxt, xmlDocGetRootElement(doc));
    if (ctxt->debugStatus == XSLT_DEBUG_NONE)
 xmlXPathOrderDocElems(doc);

    ret = xsltNewDocument(ctxt, doc);
    return(ret);
}
