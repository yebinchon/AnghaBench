
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlHashFree (int *,int *) ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xsltExtMutex ;
 int * xsltTopLevelsHash ;

__attribute__((used)) static void
xsltUnregisterAllExtModuleTopLevel(void)
{
    xmlMutexLock(xsltExtMutex);

    xmlHashFree(xsltTopLevelsHash, ((void*)0));
    xsltTopLevelsHash = ((void*)0);

    xmlMutexUnlock(xsltExtMutex);
}
