
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef TYPE_3__* xsltTransformContextPtr ;
typedef TYPE_4__* xsltStylesheetPtr ;
typedef TYPE_5__* xsltStackElemPtr ;
struct TYPE_22__ {scalar_t__ doc; } ;
struct TYPE_21__ {struct TYPE_21__* next; int name; TYPE_2__* comp; int nameURI; } ;
struct TYPE_20__ {int errors; TYPE_1__* doc; TYPE_5__* variables; } ;
struct TYPE_19__ {int globalVars; TYPE_4__* style; int * document; } ;
struct TYPE_18__ {scalar_t__ type; TYPE_8__* inst; } ;
struct TYPE_17__ {int * URL; } ;


 scalar_t__ XSLT_FUNC_VARIABLE ;
 int XSLT_TRACE (TYPE_3__*,int ,int ) ;
 int XSLT_TRACE_VARIABLES ;
 int xmlHashAddEntry2 (int ,int ,int ,TYPE_5__*) ;
 scalar_t__ xmlHashLookup2 (int ,int ,int ) ;
 int xmlHashScan (int ,int ,TYPE_3__*) ;
 TYPE_5__* xsltCopyStackElem (TYPE_5__*) ;
 int xsltEvalGlobalVariableWrapper ;
 int xsltGenericDebug (int ,char*,...) ;
 int xsltGenericDebugContext ;
 TYPE_4__* xsltNextImport (TYPE_4__*) ;
 int xsltTransformError (TYPE_3__*,TYPE_4__*,TYPE_8__*,char*,int ) ;

int
xsltEvalGlobalVariables(xsltTransformContextPtr ctxt) {
    xsltStackElemPtr elem;
    xsltStylesheetPtr style;

    if ((ctxt == ((void*)0)) || (ctxt->document == ((void*)0)))
 return(-1);
    style = ctxt->style;
    while (style != ((void*)0)) {
 elem = style->variables;
 while (elem != ((void*)0)) {
     xsltStackElemPtr def;




     def = (xsltStackElemPtr)
      xmlHashLookup2(ctxt->globalVars,
                   elem->name, elem->nameURI);
     if (def == ((void*)0)) {

  def = xsltCopyStackElem(elem);
  xmlHashAddEntry2(ctxt->globalVars,
     elem->name, elem->nameURI, def);
     } else if ((elem->comp != ((void*)0)) &&
         (elem->comp->type == XSLT_FUNC_VARIABLE)) {




  if ((elem->comp->inst != ((void*)0)) &&
      (def->comp != ((void*)0)) && (def->comp->inst != ((void*)0)) &&
      (elem->comp->inst->doc == def->comp->inst->doc))
  {
      xsltTransformError(ctxt, style, elem->comp->inst,
   "Global variable %s already defined\n", elem->name);
      if (style != ((void*)0)) style->errors++;
  }
     }
     elem = elem->next;
 }

 style = xsltNextImport(style);
    }




    xmlHashScan(ctxt->globalVars, xsltEvalGlobalVariableWrapper, ctxt);

    return(0);
}
