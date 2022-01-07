
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef int xsltExtDefPtr ;
struct TYPE_3__ {int * nsDefs; } ;


 int xsltFreeExtDefList (int ) ;

void
xsltFreeExts(xsltStylesheetPtr style)
{
    if (style->nsDefs != ((void*)0))
        xsltFreeExtDefList((xsltExtDefPtr) style->nsDefs);
}
