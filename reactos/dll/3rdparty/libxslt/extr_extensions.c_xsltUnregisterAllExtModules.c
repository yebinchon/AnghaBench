
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlHashFree (int *,int ) ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xsltExtMutex ;
 int * xsltExtensionsHash ;
 int xsltFreeExtModuleEntry ;

__attribute__((used)) static void
xsltUnregisterAllExtModules(void)
{
    if (xsltExtensionsHash == ((void*)0))
        return;

    xmlMutexLock(xsltExtMutex);

    xmlHashFree(xsltExtensionsHash, xsltFreeExtModuleEntry);
    xsltExtensionsHash = ((void*)0);

    xmlMutexUnlock(xsltExtMutex);
}
