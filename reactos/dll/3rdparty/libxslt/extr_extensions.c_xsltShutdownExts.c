
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
struct TYPE_4__ {int * extInfos; } ;


 int xmlHashFree (int *,int ) ;
 int xmlHashScan (int *,int ,TYPE_1__*) ;
 int xsltFreeExtDataEntry ;
 int xsltShutdownExt ;

void
xsltShutdownExts(xsltStylesheetPtr style)
{
    if (style == ((void*)0))
        return;
    if (style->extInfos == ((void*)0))
        return;
    xmlHashScan(style->extInfos, xsltShutdownExt, style);
    xmlHashFree(style->extInfos, xsltFreeExtDataEntry);
    style->extInfos = ((void*)0);
}
