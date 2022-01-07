
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlFreeMutex (int *) ;
 int xmlHashFree (int *,int *) ;
 int xmlHashScan (int *,int ,int ) ;
 int xmlMutexLock (int *) ;
 int xmlMutexUnlock (int *) ;
 int * xsltExtMutex ;
 int xsltFreeLocales () ;
 int xsltHashScannerModuleFree ;
 int * xsltModuleHash ;
 int xsltUninit () ;
 int xsltUnregisterAllExtModuleElement () ;
 int xsltUnregisterAllExtModuleFunction () ;
 int xsltUnregisterAllExtModuleTopLevel () ;
 int xsltUnregisterAllExtModules () ;

void
xsltCleanupGlobals(void)
{
    xsltUnregisterAllExtModules();
    xsltUnregisterAllExtModuleFunction();
    xsltUnregisterAllExtModuleElement();
    xsltUnregisterAllExtModuleTopLevel();

    xmlMutexLock(xsltExtMutex);

    if (((void*)0) != xsltModuleHash) {
        xmlHashScan(xsltModuleHash, xsltHashScannerModuleFree, 0);
        xmlHashFree(xsltModuleHash, ((void*)0));
        xsltModuleHash = ((void*)0);
    }
    xmlMutexUnlock(xsltExtMutex);

    xmlFreeMutex(xsltExtMutex);
    xsltExtMutex = ((void*)0);
    xsltFreeLocales();
    xsltUninit();
}
