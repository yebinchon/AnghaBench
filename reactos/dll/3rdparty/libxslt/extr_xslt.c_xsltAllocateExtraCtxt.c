
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltRuntimeExtraPtr ;
typedef int xsltRuntimeExtra ;
struct TYPE_7__ {int * ptr; } ;
struct TYPE_9__ {TYPE_1__ val; int * deallocate; int * info; } ;
struct TYPE_8__ {int extrasNr; int extrasMax; TYPE_3__* extras; } ;


 scalar_t__ xmlMalloc (int) ;
 scalar_t__ xmlRealloc (TYPE_3__*,int) ;
 int xsltTransformError (TYPE_2__*,int *,int *,char*) ;

int
xsltAllocateExtraCtxt(xsltTransformContextPtr ctxt)
{
    if (ctxt->extrasNr >= ctxt->extrasMax) {
 int i;
 if (ctxt->extrasNr == 0) {
     ctxt->extrasMax = 20;
     ctxt->extras = (xsltRuntimeExtraPtr)
  xmlMalloc(ctxt->extrasMax * sizeof(xsltRuntimeExtra));
     if (ctxt->extras == ((void*)0)) {
  xsltTransformError(ctxt, ((void*)0), ((void*)0),
   "xsltAllocateExtraCtxt: out of memory\n");
  return(0);
     }
     for (i = 0;i < ctxt->extrasMax;i++) {
  ctxt->extras[i].info = ((void*)0);
  ctxt->extras[i].deallocate = ((void*)0);
  ctxt->extras[i].val.ptr = ((void*)0);
     }

 } else {
     xsltRuntimeExtraPtr tmp;

     ctxt->extrasMax += 100;
     tmp = (xsltRuntimeExtraPtr) xmlRealloc(ctxt->extras,
              ctxt->extrasMax * sizeof(xsltRuntimeExtra));
     if (tmp == ((void*)0)) {
  xsltTransformError(ctxt, ((void*)0), ((void*)0),
   "xsltAllocateExtraCtxt: out of memory\n");
  return(0);
     }
     ctxt->extras = tmp;
     for (i = ctxt->extrasNr;i < ctxt->extrasMax;i++) {
  ctxt->extras[i].info = ((void*)0);
  ctxt->extras[i].deallocate = ((void*)0);
  ctxt->extras[i].val.ptr = ((void*)0);
     }
 }
    }
    return(ctxt->extrasNr++);
}
