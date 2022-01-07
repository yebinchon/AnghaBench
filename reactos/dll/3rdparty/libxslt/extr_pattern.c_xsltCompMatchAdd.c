
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* xsltStepOpPtr ;
typedef int xsltStepOp ;
typedef TYPE_2__* xsltParserContextPtr ;
typedef scalar_t__ xsltOp ;
typedef TYPE_3__* xsltCompMatchPtr ;
typedef TYPE_4__* xmlXPathContextPtr ;
typedef int xmlChar ;
struct TYPE_17__ {int errors; int dict; int * doc; } ;
struct TYPE_16__ {int dict; int flags; } ;
struct TYPE_15__ {int nbStep; int maxStep; TYPE_1__* steps; } ;
struct TYPE_14__ {TYPE_5__* style; int elem; int * ctxt; } ;
struct TYPE_13__ {int * comp; void* lenExtra; void* indexExtra; void* previousExtra; int * value3; int * value2; int * value; scalar_t__ op; } ;


 int XML_XPATH_NOVAR ;
 scalar_t__ XSLT_OP_PREDICATE ;
 int xmlFree (int *) ;
 scalar_t__ xmlRealloc (TYPE_1__*,int) ;
 int * xmlXPathCtxtCompile (TYPE_4__*,int *) ;
 int xmlXPathFreeContext (TYPE_4__*) ;
 TYPE_4__* xmlXPathNewContext (int *) ;
 void* xsltAllocateExtra (TYPE_5__*) ;
 void* xsltAllocateExtraCtxt (int *) ;
 int xsltGenericError (int ,char*) ;
 int xsltGenericErrorContext ;
 int xsltTransformError (int *,TYPE_5__*,int ,char*) ;

__attribute__((used)) static int
xsltCompMatchAdd(xsltParserContextPtr ctxt, xsltCompMatchPtr comp,
                 xsltOp op, xmlChar * value, xmlChar * value2, int novar)
{
    if (comp->nbStep >= comp->maxStep) {
        xsltStepOpPtr tmp;

 tmp = (xsltStepOpPtr) xmlRealloc(comp->steps, comp->maxStep * 2 *
                                  sizeof(xsltStepOp));
 if (tmp == ((void*)0)) {
     xsltGenericError(xsltGenericErrorContext,
      "xsltCompMatchAdd: memory re-allocation failure.\n");
     if (ctxt->style != ((void*)0))
  ctxt->style->errors++;
     if (value)
         xmlFree(value);
     if (value2)
         xmlFree(value2);
     return (-1);
 }
        comp->maxStep *= 2;
 comp->steps = tmp;
    }
    comp->steps[comp->nbStep].op = op;
    comp->steps[comp->nbStep].value = value;
    comp->steps[comp->nbStep].value2 = value2;
    comp->steps[comp->nbStep].value3 = ((void*)0);
    comp->steps[comp->nbStep].comp = ((void*)0);
    if (ctxt->ctxt != ((void*)0)) {
 comp->steps[comp->nbStep].previousExtra =
     xsltAllocateExtraCtxt(ctxt->ctxt);
 comp->steps[comp->nbStep].indexExtra =
     xsltAllocateExtraCtxt(ctxt->ctxt);
 comp->steps[comp->nbStep].lenExtra =
     xsltAllocateExtraCtxt(ctxt->ctxt);
    } else {
 comp->steps[comp->nbStep].previousExtra =
     xsltAllocateExtra(ctxt->style);
 comp->steps[comp->nbStep].indexExtra =
     xsltAllocateExtra(ctxt->style);
 comp->steps[comp->nbStep].lenExtra =
     xsltAllocateExtra(ctxt->style);
    }
    if (op == XSLT_OP_PREDICATE) {
 xmlXPathContextPtr xctxt;

 if (ctxt->style != ((void*)0))
     xctxt = xmlXPathNewContext(ctxt->style->doc);
 else
     xctxt = xmlXPathNewContext(((void*)0));




 if (ctxt->style != ((void*)0))
     xctxt->dict = ctxt->style->dict;
 comp->steps[comp->nbStep].comp = xmlXPathCtxtCompile(xctxt, value);
 xmlXPathFreeContext(xctxt);
 if (comp->steps[comp->nbStep].comp == ((void*)0)) {
     xsltTransformError(((void*)0), ctxt->style, ctxt->elem,
      "Failed to compile predicate\n");
     if (ctxt->style != ((void*)0))
  ctxt->style->errors++;
 }
    }
    comp->nbStep++;
    return (0);
}
