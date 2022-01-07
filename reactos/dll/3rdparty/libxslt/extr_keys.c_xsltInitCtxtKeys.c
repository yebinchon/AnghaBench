
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltStylesheetPtr ;
typedef TYPE_4__* xsltKeyDefPtr ;
typedef TYPE_5__* xsltDocumentPtr ;
struct TYPE_18__ {TYPE_1__* doc; } ;
struct TYPE_17__ {struct TYPE_17__* next; } ;
struct TYPE_16__ {scalar_t__ keys; } ;
struct TYPE_15__ {TYPE_3__* style; } ;
struct TYPE_14__ {int * URL; } ;


 int XSLT_TRACE (TYPE_2__*,int ,int ) ;
 int XSLT_TRACE_KEYS ;
 int fprintf (int ,char*) ;
 int stderr ;
 int xsltGenericDebug (int ,char*,int *) ;
 int xsltGenericDebugContext ;
 int xsltInitCtxtKey (TYPE_2__*,TYPE_5__*,TYPE_4__*) ;
 TYPE_3__* xsltNextImport (TYPE_3__*) ;

void
xsltInitCtxtKeys(xsltTransformContextPtr ctxt, xsltDocumentPtr idoc) {
    xsltStylesheetPtr style;
    xsltKeyDefPtr keyDef;

    if ((ctxt == ((void*)0)) || (idoc == ((void*)0)))
 return;
    style = ctxt->style;
    while (style != ((void*)0)) {
 keyDef = (xsltKeyDefPtr) style->keys;
 while (keyDef != ((void*)0)) {
     xsltInitCtxtKey(ctxt, idoc, keyDef);

     keyDef = keyDef->next;
 }

 style = xsltNextImport(style);
    }





}
