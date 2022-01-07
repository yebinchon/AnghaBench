
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;


 int xmlHashRemoveEntry (int *,int const*,int ) ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xsltExtMutex ;
 int * xsltExtensionsHash ;
 int xsltFreeExtModuleEntry ;

int
xsltUnregisterExtModule(const xmlChar * URI)
{
    int ret;

    if (URI == ((void*)0))
        return (-1);
    if (xsltExtensionsHash == ((void*)0))
        return (-1);

    xmlMutexLock(xsltExtMutex);

    ret = xmlHashRemoveEntry(xsltExtensionsHash, URI, xsltFreeExtModuleEntry);

    xmlMutexUnlock(xsltExtMutex);

    return (ret);
}
