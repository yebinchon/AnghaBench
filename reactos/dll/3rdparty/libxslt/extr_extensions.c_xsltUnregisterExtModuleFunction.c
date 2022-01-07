
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;


 int xmlHashRemoveEntry2 (int *,int const*,int const*,int *) ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xsltExtMutex ;
 int * xsltFunctionsHash ;

int
xsltUnregisterExtModuleFunction(const xmlChar * name, const xmlChar * URI)
{
    int ret;

    if ((xsltFunctionsHash == ((void*)0)) || (name == ((void*)0)) || (URI == ((void*)0)))
        return (-1);

    xmlMutexLock(xsltExtMutex);

    ret = xmlHashRemoveEntry2(xsltFunctionsHash, name, URI, ((void*)0));

    xmlMutexUnlock(xsltExtMutex);

    return(ret);
}
