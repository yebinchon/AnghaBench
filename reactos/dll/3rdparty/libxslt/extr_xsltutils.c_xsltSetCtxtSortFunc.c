
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef int xsltSortFunc ;
struct TYPE_3__ {int sortfunc; } ;



void
xsltSetCtxtSortFunc(xsltTransformContextPtr ctxt, xsltSortFunc handler) {
    ctxt->sortfunc = handler;
}
