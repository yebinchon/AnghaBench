
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ret; TYPE_8__* ctxt; } ;
typedef TYPE_1__ xsltInitExtCtxt ;
typedef TYPE_2__* xsltExtModulePtr ;
typedef TYPE_3__* xsltExtDataPtr ;
typedef int xmlChar ;
struct TYPE_13__ {int * extInfos; } ;
struct TYPE_12__ {TYPE_2__* extModule; } ;
struct TYPE_11__ {int (* shutdownFunc ) (TYPE_8__*,int const*,void*) ;void* (* initFunc ) (TYPE_8__*,int const*) ;} ;


 void* stub1 (TYPE_8__*,int const*) ;
 int stub2 (TYPE_8__*,int const*,void*) ;
 scalar_t__ xmlHashAddEntry (int *,int const*,TYPE_3__*) ;
 int * xmlHashCreate (int) ;
 scalar_t__ xmlHashLookup (int *,int const*) ;
 int xsltFreeExtData (TYPE_3__*) ;
 int xsltGenericDebug (int ,char*,...) ;
 int xsltGenericDebugContext ;
 int xsltGenericError (int ,char*,int const*) ;
 int xsltGenericErrorContext ;
 TYPE_3__* xsltNewExtData (TYPE_2__*,void*) ;

__attribute__((used)) static void
xsltInitCtxtExt(void *payload, void *data, const xmlChar * URI)
{
    xsltExtDataPtr styleData = (xsltExtDataPtr) payload;
    xsltInitExtCtxt *ctxt = (xsltInitExtCtxt *) data;
    xsltExtModulePtr module;
    xsltExtDataPtr ctxtData;
    void *extData;

    if ((styleData == ((void*)0)) || (ctxt == ((void*)0)) || (URI == ((void*)0)) ||
        (ctxt->ret == -1)) {




        return;
    }
    module = styleData->extModule;
    if ((module == ((void*)0)) || (module->initFunc == ((void*)0))) {




        return;
    }

    ctxtData = (xsltExtDataPtr) xmlHashLookup(ctxt->ctxt->extInfos, URI);
    if (ctxtData != ((void*)0)) {




        return;
    }

    extData = module->initFunc(ctxt->ctxt, URI);
    if (extData == ((void*)0)) {




    }
    ctxtData = xsltNewExtData(module, extData);
    if (ctxtData == ((void*)0)) {
        ctxt->ret = -1;
        return;
    }

    if (ctxt->ctxt->extInfos == ((void*)0))
        ctxt->ctxt->extInfos = xmlHashCreate(10);
    if (ctxt->ctxt->extInfos == ((void*)0)) {
        ctxt->ret = -1;
        return;
    }

    if (xmlHashAddEntry(ctxt->ctxt->extInfos, URI, ctxtData) < 0) {
        xsltGenericError(xsltGenericErrorContext,
                         "Failed to register module data: %s\n", URI);
        if (module->shutdownFunc)
            module->shutdownFunc(ctxt->ctxt, URI, extData);
        xsltFreeExtData(ctxtData);
        ctxt->ret = -1;
        return;
    }




    ctxt->ret++;
}
