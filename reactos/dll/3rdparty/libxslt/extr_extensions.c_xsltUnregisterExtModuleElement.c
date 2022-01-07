
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;


 int xmlHashRemoveEntry2 (int *,int const*,int const*,int ) ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int * xsltElementsHash ;
 int xsltExtMutex ;
 int xsltFreeExtElementEntry ;

int
xsltUnregisterExtModuleElement(const xmlChar * name, const xmlChar * URI)
{
    int ret;

    if ((xsltElementsHash == ((void*)0)) || (name == ((void*)0)) || (URI == ((void*)0)))
        return (-1);

    xmlMutexLock(xsltExtMutex);

    ret = xmlHashRemoveEntry2(xsltElementsHash, name, URI,
                              xsltFreeExtElementEntry);

    xmlMutexUnlock(xsltExtMutex);

    return(ret);
}
