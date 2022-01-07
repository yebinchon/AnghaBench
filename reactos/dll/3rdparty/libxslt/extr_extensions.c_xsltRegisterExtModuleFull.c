
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xsltStyleExtShutdownFunction ;
typedef int xsltStyleExtInitFunction ;
typedef scalar_t__ xsltExtShutdownFunction ;
typedef TYPE_1__* xsltExtModulePtr ;
typedef int * xsltExtInitFunction ;
typedef int xmlChar ;
struct TYPE_4__ {scalar_t__ shutdownFunc; int * initFunc; } ;


 int xmlHashAddEntry (int *,int const*,void*) ;
 int * xmlHashCreate (int) ;
 TYPE_1__* xmlHashLookup (int *,int const*) ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xsltExtMutex ;
 int * xsltExtensionsHash ;
 TYPE_1__* xsltNewExtModule (int *,scalar_t__,int ,int ) ;

int
xsltRegisterExtModuleFull(const xmlChar * URI,
                          xsltExtInitFunction initFunc,
                          xsltExtShutdownFunction shutdownFunc,
                          xsltStyleExtInitFunction styleInitFunc,
                          xsltStyleExtShutdownFunction styleShutdownFunc)
{
    int ret;
    xsltExtModulePtr module;

    if ((URI == ((void*)0)) || (initFunc == ((void*)0)))
        return (-1);
    if (xsltExtensionsHash == ((void*)0))
        xsltExtensionsHash = xmlHashCreate(10);

    if (xsltExtensionsHash == ((void*)0))
        return (-1);

    xmlMutexLock(xsltExtMutex);

    module = xmlHashLookup(xsltExtensionsHash, URI);
    if (module != ((void*)0)) {
        if ((module->initFunc == initFunc) &&
            (module->shutdownFunc == shutdownFunc))
            ret = 0;
        else
            ret = -1;
        goto done;
    }
    module = xsltNewExtModule(initFunc, shutdownFunc,
                              styleInitFunc, styleShutdownFunc);
    if (module == ((void*)0)) {
        ret = -1;
        goto done;
    }
    ret = xmlHashAddEntry(xsltExtensionsHash, URI, (void *) module);

done:
    xmlMutexUnlock(xsltExtMutex);
    return (ret);
}
