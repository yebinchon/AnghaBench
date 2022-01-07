
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef int xsltStylesheetPtr ;
typedef int * xmlNodePtr ;
typedef int (* xmlGenericErrorFunc ) (void*,char*,char*) ;
struct TYPE_4__ {scalar_t__ state; int * inst; void* errctx; int (* error ) (void*,char*,char*) ;} ;


 int XSLT_GET_VAR_STR (char const*,char*) ;
 scalar_t__ XSLT_STATE_ERROR ;
 scalar_t__ XSLT_STATE_OK ;
 int xmlFree (char*) ;
 int xsltGenericError (void*,char*,char*) ;
 void* xsltGenericErrorContext ;
 int xsltPrintErrorContext (TYPE_1__*,int ,int *) ;

void
xsltTransformError(xsltTransformContextPtr ctxt,
     xsltStylesheetPtr style,
     xmlNodePtr node,
     const char *msg, ...) {
    xmlGenericErrorFunc error = xsltGenericError;
    void *errctx = xsltGenericErrorContext;
    char * str;

    if (ctxt != ((void*)0)) {
        if (ctxt->state == XSLT_STATE_OK)
     ctxt->state = XSLT_STATE_ERROR;
 if (ctxt->error != ((void*)0)) {
     error = ctxt->error;
     errctx = ctxt->errctx;
 }
    }
    if ((node == ((void*)0)) && (ctxt != ((void*)0)))
 node = ctxt->inst;
    xsltPrintErrorContext(ctxt, style, node);
    XSLT_GET_VAR_STR(msg, str);
    error(errctx, "%s", str);
    if (str != ((void*)0))
 xmlFree(str);
}
