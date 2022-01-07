
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltExtModulePtr ;
typedef TYPE_3__* xsltExtDataPtr ;
typedef int xmlChar ;
struct TYPE_14__ {void* extData; } ;
struct TYPE_13__ {int (* shutdownFunc ) (TYPE_1__*,int const*,void*) ;void* (* initFunc ) (TYPE_1__*,int const*) ;} ;
struct TYPE_12__ {int * extInfos; } ;


 void* stub1 (TYPE_1__*,int const*) ;
 int stub2 (TYPE_1__*,int const*,void*) ;
 scalar_t__ xmlHashAddEntry (int *,int const*,void*) ;
 int * xmlHashCreate (int) ;
 TYPE_2__* xmlHashLookup (int *,int const*) ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xsltExtMutex ;
 int * xsltExtensionsHash ;
 int xsltFreeExtData (TYPE_3__*) ;
 int xsltGenericDebug (int ,char*,int const*) ;
 int xsltGenericDebugContext ;
 TYPE_3__* xsltNewExtData (TYPE_2__*,void*) ;
 int xsltTransformError (TYPE_1__*,int *,int *,char*,int const*) ;

void *
xsltGetExtData(xsltTransformContextPtr ctxt, const xmlChar * URI)
{
    xsltExtDataPtr data;

    if ((ctxt == ((void*)0)) || (URI == ((void*)0)))
        return (((void*)0));
    if (ctxt->extInfos == ((void*)0)) {
        ctxt->extInfos = xmlHashCreate(10);
        if (ctxt->extInfos == ((void*)0))
            return (((void*)0));
        data = ((void*)0);
    } else {
        data = (xsltExtDataPtr) xmlHashLookup(ctxt->extInfos, URI);
    }
    if (data == ((void*)0)) {
        void *extData;
        xsltExtModulePtr module;

        xmlMutexLock(xsltExtMutex);

        module = xmlHashLookup(xsltExtensionsHash, URI);

        xmlMutexUnlock(xsltExtMutex);

        if (module == ((void*)0)) {




            return (((void*)0));
        } else {
            if (module->initFunc == ((void*)0))
                return (((void*)0));






            extData = module->initFunc(ctxt, URI);
            if (extData == ((void*)0))
                return (((void*)0));

            data = xsltNewExtData(module, extData);
            if (data == ((void*)0))
                return (((void*)0));
            if (xmlHashAddEntry(ctxt->extInfos, URI, (void *) data) < 0) {
                xsltTransformError(ctxt, ((void*)0), ((void*)0),
                                   "Failed to register module data: %s\n",
                                   URI);
                if (module->shutdownFunc)
                    module->shutdownFunc(ctxt, URI, extData);
                xsltFreeExtData(data);
                return (((void*)0));
            }
        }
    }
    return (data->extData);
}
