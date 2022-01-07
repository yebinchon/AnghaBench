
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlXPathFunction ;
typedef int xmlChar ;


 int XML_CAST_FPTR (int *) ;
 int * xmlHashCreate (int) ;
 int xmlHashUpdateEntry2 (int *,int const*,int const*,int ,int *) ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xsltExtMutex ;
 int * xsltFunctionsHash ;

int
xsltRegisterExtModuleFunction(const xmlChar * name, const xmlChar * URI,
                              xmlXPathFunction function)
{
    if ((name == ((void*)0)) || (URI == ((void*)0)) || (function == ((void*)0)))
        return (-1);

    if (xsltFunctionsHash == ((void*)0))
        xsltFunctionsHash = xmlHashCreate(10);
    if (xsltFunctionsHash == ((void*)0))
        return (-1);

    xmlMutexLock(xsltExtMutex);

    xmlHashUpdateEntry2(xsltFunctionsHash, name, URI,
                        XML_CAST_FPTR(function), ((void*)0));

    xmlMutexUnlock(xsltExtMutex);

    return (0);
}
