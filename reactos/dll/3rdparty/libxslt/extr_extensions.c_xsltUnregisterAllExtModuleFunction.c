
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlHashFree (int *,int *) ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xsltExtMutex ;
 int * xsltFunctionsHash ;

__attribute__((used)) static void
xsltUnregisterAllExtModuleFunction(void)
{
    xmlMutexLock(xsltExtMutex);

    xmlHashFree(xsltFunctionsHash, ((void*)0));
    xsltFunctionsHash = ((void*)0);

    xmlMutexUnlock(xsltExtMutex);
}
