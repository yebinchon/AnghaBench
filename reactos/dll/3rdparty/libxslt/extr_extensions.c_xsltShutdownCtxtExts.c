
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
struct TYPE_4__ {int * extInfos; } ;


 int xmlHashFree (int *,int ) ;
 int xmlHashScan (int *,int ,TYPE_1__*) ;
 int xsltFreeExtDataEntry ;
 int xsltShutdownCtxtExt ;

void
xsltShutdownCtxtExts(xsltTransformContextPtr ctxt)
{
    if (ctxt == ((void*)0))
        return;
    if (ctxt->extInfos == ((void*)0))
        return;
    xmlHashScan(ctxt->extInfos, xsltShutdownCtxtExt, ctxt);
    xmlHashFree(ctxt->extInfos, xsltFreeExtDataEntry);
    ctxt->extInfos = ((void*)0);
}
