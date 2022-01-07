
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef int xmlGenericErrorFunc ;
struct TYPE_3__ {void* errctx; int error; } ;



void
xsltSetTransformErrorFunc(xsltTransformContextPtr ctxt,
                          void *ctx, xmlGenericErrorFunc handler)
{
    ctxt->error = handler;
    ctxt->errctx = ctx;
}
