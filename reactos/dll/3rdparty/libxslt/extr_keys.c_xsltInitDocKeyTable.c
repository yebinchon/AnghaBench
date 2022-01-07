
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltStylesheetPtr ;
typedef TYPE_3__* xsltKeyDefPtr ;
typedef char xmlChar ;
struct TYPE_15__ {scalar_t__ nbKeysComputed; } ;
struct TYPE_14__ {int * inst; struct TYPE_14__* next; int * nameURI; int * name; } ;
struct TYPE_13__ {scalar_t__ keys; } ;
struct TYPE_12__ {scalar_t__ nbKeys; int state; TYPE_9__* document; TYPE_2__* style; } ;


 int XSLT_STATE_STOPPED ;
 int XSLT_TRACE (TYPE_1__*,int ,int ) ;
 int XSLT_TRACE_KEYS ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 scalar_t__ xmlStrEqual (int *,char const*) ;
 int xsltGenericDebug (int ,char*,char const*) ;
 int xsltGenericDebugContext ;
 int xsltInitCtxtKey (TYPE_1__*,TYPE_9__*,TYPE_3__*) ;
 TYPE_2__* xsltNextImport (TYPE_2__*) ;
 int xsltTransformError (TYPE_1__*,int *,int *,char*,char const*) ;

__attribute__((used)) static int
xsltInitDocKeyTable(xsltTransformContextPtr ctxt, const xmlChar *name,
                    const xmlChar *nameURI)
{
    xsltStylesheetPtr style;
    xsltKeyDefPtr keyd = ((void*)0);
    int found = 0;





    style = ctxt->style;
    while (style != ((void*)0)) {
 keyd = (xsltKeyDefPtr) style->keys;
 while (keyd != ((void*)0)) {
     if (((keyd->nameURI != ((void*)0)) ==
   (nameURI != ((void*)0))) &&
  xmlStrEqual(keyd->name, name) &&
  xmlStrEqual(keyd->nameURI, nameURI))
     {
  xsltInitCtxtKey(ctxt, ctxt->document, keyd);
  if (ctxt->document->nbKeysComputed == ctxt->nbKeys)
      return(0);
  found = 1;
     }
     keyd = keyd->next;
 }
 style = xsltNextImport(style);
    }
    if (found == 0) {




 xsltTransformError(ctxt, ((void*)0), keyd? keyd->inst : ((void*)0),
     "Failed to find key definition for %s\n", name);
 ctxt->state = XSLT_STATE_STOPPED;
        return(-1);
    }



    return(0);
}
