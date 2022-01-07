
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef int xmlNodePtr ;
struct TYPE_5__ {int (* sortfunc ) (TYPE_1__*,int *,int) ;} ;


 int stub1 (TYPE_1__*,int *,int) ;
 int xsltSortFunction (TYPE_1__*,int *,int) ;

void
xsltDoSortFunction(xsltTransformContextPtr ctxt, xmlNodePtr * sorts,
                   int nbsorts)
{
    if (ctxt->sortfunc != ((void*)0))
 (ctxt->sortfunc)(ctxt, sorts, nbsorts);
    else if (xsltSortFunction != ((void*)0))
        xsltSortFunction(ctxt, sorts, nbsorts);
}
