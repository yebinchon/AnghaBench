
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
struct TYPE_3__ {int * extFunctions; int * extElements; } ;


 int xmlHashFree (int *,int *) ;

void
xsltFreeCtxtExts(xsltTransformContextPtr ctxt)
{
    if (ctxt->extElements != ((void*)0))
        xmlHashFree(ctxt->extElements, ((void*)0));
    if (ctxt->extFunctions != ((void*)0))
        xmlHashFree(ctxt->extFunctions, ((void*)0));
}
