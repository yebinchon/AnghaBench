
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltExtShutdownFunction ;
typedef int xsltExtInitFunction ;
typedef int xmlChar ;


 int xsltRegisterExtModuleFull (int const*,int ,int ,int *,int *) ;

int
xsltRegisterExtModule(const xmlChar * URI,
                      xsltExtInitFunction initFunc,
                      xsltExtShutdownFunction shutdownFunc)
{
    return xsltRegisterExtModuleFull(URI, initFunc, shutdownFunc,
                                     ((void*)0), ((void*)0));
}
