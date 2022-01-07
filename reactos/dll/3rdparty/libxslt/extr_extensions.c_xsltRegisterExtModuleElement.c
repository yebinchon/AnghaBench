
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xsltTransformFunction ;
typedef int xsltPreComputeFunction ;
typedef int * xsltExtElementPtr ;
typedef int xmlChar ;


 int * xmlHashCreate (int) ;
 int xmlHashUpdateEntry2 (int *,int const*,int const*,void*,int ) ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int * xsltElementsHash ;
 int xsltExtMutex ;
 int xsltFreeExtElementEntry ;
 int * xsltNewExtElement (int ,int *) ;

int
xsltRegisterExtModuleElement(const xmlChar * name, const xmlChar * URI,
                             xsltPreComputeFunction precomp,
                             xsltTransformFunction transform)
{
    int ret = 0;

    xsltExtElementPtr ext;

    if ((name == ((void*)0)) || (URI == ((void*)0)) || (transform == ((void*)0)))
        return (-1);

    if (xsltElementsHash == ((void*)0))
        xsltElementsHash = xmlHashCreate(10);
    if (xsltElementsHash == ((void*)0))
        return (-1);

    xmlMutexLock(xsltExtMutex);

    ext = xsltNewExtElement(precomp, transform);
    if (ext == ((void*)0)) {
        ret = -1;
        goto done;
    }

    xmlHashUpdateEntry2(xsltElementsHash, name, URI, (void *) ext,
                        xsltFreeExtElementEntry);

done:
    xmlMutexUnlock(xsltExtMutex);

    return (ret);
}
