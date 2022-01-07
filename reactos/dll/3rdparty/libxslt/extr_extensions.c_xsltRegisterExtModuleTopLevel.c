
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xsltTopLevelFunction ;
typedef int xmlChar ;


 int XML_CAST_FPTR (int *) ;
 int * xmlHashCreate (int) ;
 int xmlHashUpdateEntry2 (int *,int const*,int const*,int ,int *) ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xsltExtMutex ;
 int * xsltTopLevelsHash ;

int
xsltRegisterExtModuleTopLevel(const xmlChar * name, const xmlChar * URI,
                              xsltTopLevelFunction function)
{
    if ((name == ((void*)0)) || (URI == ((void*)0)) || (function == ((void*)0)))
        return (-1);

    if (xsltTopLevelsHash == ((void*)0))
        xsltTopLevelsHash = xmlHashCreate(10);
    if (xsltTopLevelsHash == ((void*)0))
        return (-1);

    xmlMutexLock(xsltExtMutex);

    xmlHashUpdateEntry2(xsltTopLevelsHash, name, URI,
                        XML_CAST_FPTR(function), ((void*)0));

    xmlMutexUnlock(xsltExtMutex);

    return (0);
}
