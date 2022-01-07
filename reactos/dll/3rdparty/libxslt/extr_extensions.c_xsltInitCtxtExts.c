
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltStylesheetPtr ;
struct TYPE_10__ {int ret; TYPE_1__* ctxt; } ;
typedef TYPE_3__ xsltInitExtCtxt ;
struct TYPE_9__ {int * extInfos; } ;
struct TYPE_8__ {TYPE_2__* style; } ;


 int xmlHashScan (int *,int ,TYPE_3__*) ;
 int xsltGenericDebug (int ,char*,int) ;
 int xsltGenericDebugContext ;
 int xsltInitCtxtExt ;
 TYPE_2__* xsltNextImport (TYPE_2__*) ;

int
xsltInitCtxtExts(xsltTransformContextPtr ctxt)
{
    xsltStylesheetPtr style;
    xsltInitExtCtxt ctx;

    if (ctxt == ((void*)0))
        return (-1);

    style = ctxt->style;
    if (style == ((void*)0))
        return (-1);

    ctx.ctxt = ctxt;
    ctx.ret = 0;

    while (style != ((void*)0)) {
        if (style->extInfos != ((void*)0)) {
            xmlHashScan(style->extInfos, xsltInitCtxtExt, &ctx);
            if (ctx.ret == -1)
                return (-1);
        }
        style = xsltNextImport(style);
    }




    return (ctx.ret);
}
