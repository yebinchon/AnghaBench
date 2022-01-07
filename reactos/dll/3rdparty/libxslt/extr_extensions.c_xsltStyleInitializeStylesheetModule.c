
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltExtModulePtr ;
typedef int * xsltExtDataPtr ;
typedef int xmlChar ;
struct TYPE_10__ {int (* styleShutdownFunc ) (TYPE_1__*,int const*,void*) ;void* (* styleInitFunc ) (TYPE_1__*,int const*) ;} ;
struct TYPE_9__ {int errors; int * extInfos; } ;


 void* stub1 (TYPE_1__*,int const*) ;
 int stub2 (TYPE_1__*,int const*,void*) ;
 scalar_t__ xmlHashAddEntry (int *,int const*,void*) ;
 int * xmlHashCreate (int) ;
 TYPE_2__* xmlHashLookup (int *,int const*) ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xsltExtMutex ;
 int * xsltExtensionsHash ;
 int xsltFreeExtData (int *) ;
 int xsltGenericDebug (int ,char*,int const*) ;
 int xsltGenericDebugContext ;
 int * xsltNewExtData (TYPE_2__*,void*) ;
 int xsltTransformError (int *,TYPE_1__*,int *,char*,int const*) ;

__attribute__((used)) static xsltExtDataPtr
xsltStyleInitializeStylesheetModule(xsltStylesheetPtr style,
         const xmlChar * URI)
{
    xsltExtDataPtr dataContainer;
    void *userData = ((void*)0);
    xsltExtModulePtr module;

    if ((style == ((void*)0)) || (URI == ((void*)0)))
 return(((void*)0));

    if (xsltExtensionsHash == ((void*)0)) {




 return(((void*)0));
    }

    xmlMutexLock(xsltExtMutex);

    module = xmlHashLookup(xsltExtensionsHash, URI);

    xmlMutexUnlock(xsltExtMutex);

    if (module == ((void*)0)) {




 return (((void*)0));
    }



    if (style->extInfos == ((void*)0)) {
 style->extInfos = xmlHashCreate(10);
 if (style->extInfos == ((void*)0))
     return (((void*)0));
    }



    if (module->styleInitFunc == ((void*)0)) {




    } else {







 userData = module->styleInitFunc(style, URI);
    }



    dataContainer = xsltNewExtData(module, userData);
    if (dataContainer == ((void*)0))
 return (((void*)0));

    if (xmlHashAddEntry(style->extInfos, URI,
 (void *) dataContainer) < 0)
    {
 xsltTransformError(((void*)0), style, ((void*)0),
     "Failed to register module '%s'.\n", URI);
 style->errors++;
 if (module->styleShutdownFunc)
     module->styleShutdownFunc(style, URI, userData);
 xsltFreeExtData(dataContainer);
 return (((void*)0));
    }

    return(dataContainer);
}
