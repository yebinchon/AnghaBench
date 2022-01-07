
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlHashFree (int *,int ) ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int * xsltElementsHash ;
 int xsltExtMutex ;
 int xsltFreeExtElementEntry ;

__attribute__((used)) static void
xsltUnregisterAllExtModuleElement(void)
{
    xmlMutexLock(xsltExtMutex);

    xmlHashFree(xsltElementsHash, xsltFreeExtElementEntry);
    xsltElementsHash = ((void*)0);

    xmlMutexUnlock(xsltExtMutex);
}
