
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef int xsltTransformContext ;
struct TYPE_12__ {int * nsHash; } ;
struct TYPE_11__ {scalar_t__ extrasNr; int dict; int cache; struct TYPE_11__* extras; int * info; int (* deallocate ) (int *) ;struct TYPE_11__* profTab; struct TYPE_11__* varsTab; struct TYPE_11__* templTab; TYPE_8__* xpathCtxt; } ;


 int memset (TYPE_1__*,int,int) ;
 int stub1 (int *) ;
 int xmlDictFree (int ) ;
 int xmlFree (TYPE_1__*) ;
 int xmlXPathFreeContext (TYPE_8__*) ;
 int xsltFreeCtxtExts (TYPE_1__*) ;
 int xsltFreeDocuments (TYPE_1__*) ;
 int xsltFreeGlobalVariables (TYPE_1__*) ;
 int xsltFreeRVTs (TYPE_1__*) ;
 int xsltGenericDebug (int ,char*) ;
 int xsltGenericDebugContext ;
 int xsltShutdownCtxtExts (TYPE_1__*) ;
 int xsltTransformCacheFree (int ) ;

void
xsltFreeTransformContext(xsltTransformContextPtr ctxt) {
    if (ctxt == ((void*)0))
 return;





    xsltShutdownCtxtExts(ctxt);

    if (ctxt->xpathCtxt != ((void*)0)) {
 ctxt->xpathCtxt->nsHash = ((void*)0);
 xmlXPathFreeContext(ctxt->xpathCtxt);
    }
    if (ctxt->templTab != ((void*)0))
 xmlFree(ctxt->templTab);
    if (ctxt->varsTab != ((void*)0))
 xmlFree(ctxt->varsTab);
    if (ctxt->profTab != ((void*)0))
 xmlFree(ctxt->profTab);
    if ((ctxt->extrasNr > 0) && (ctxt->extras != ((void*)0))) {
 int i;

 for (i = 0;i < ctxt->extrasNr;i++) {
     if ((ctxt->extras[i].deallocate != ((void*)0)) &&
  (ctxt->extras[i].info != ((void*)0)))
  ctxt->extras[i].deallocate(ctxt->extras[i].info);
 }
 xmlFree(ctxt->extras);
    }
    xsltFreeGlobalVariables(ctxt);
    xsltFreeDocuments(ctxt);
    xsltFreeCtxtExts(ctxt);
    xsltFreeRVTs(ctxt);
    xsltTransformCacheFree(ctxt->cache);
    xmlDictFree(ctxt->dict);




    memset(ctxt, -1, sizeof(xsltTransformContext));
    xmlFree(ctxt);
}
