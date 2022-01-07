
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xsltStylesheetPtr ;
typedef TYPE_1__* xsltExtModulePtr ;
typedef TYPE_2__* xsltExtDataPtr ;
typedef int xmlChar ;
struct TYPE_4__ {int extData; TYPE_1__* extModule; } ;
struct TYPE_3__ {int (* styleShutdownFunc ) (int *,int const*,int ) ;} ;


 int stub1 (int *,int const*,int ) ;
 int xsltGenericDebug (int ,char*,int const*) ;
 int xsltGenericDebugContext ;

__attribute__((used)) static void
xsltShutdownExt(void *payload, void *vctxt, const xmlChar * URI)
{
    xsltExtDataPtr data = (xsltExtDataPtr) payload;
    xsltStylesheetPtr style = (xsltStylesheetPtr) vctxt;
    xsltExtModulePtr module;

    if ((data == ((void*)0)) || (style == ((void*)0)) || (URI == ((void*)0)))
        return;
    module = data->extModule;
    if ((module == ((void*)0)) || (module->styleShutdownFunc == ((void*)0)))
        return;





    module->styleShutdownFunc(style, URI, data->extData);






}
