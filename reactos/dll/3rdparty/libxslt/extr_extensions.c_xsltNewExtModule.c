
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xsltStyleExtShutdownFunction ;
typedef int xsltStyleExtInitFunction ;
typedef int xsltExtShutdownFunction ;
typedef TYPE_1__* xsltExtModulePtr ;
typedef int xsltExtModule ;
typedef int xsltExtInitFunction ;
struct TYPE_3__ {int styleShutdownFunc; int styleInitFunc; int shutdownFunc; int initFunc; } ;


 scalar_t__ xmlMalloc (int) ;
 int xsltTransformError (int *,int *,int *,char*) ;

__attribute__((used)) static xsltExtModulePtr
xsltNewExtModule(xsltExtInitFunction initFunc,
                 xsltExtShutdownFunction shutdownFunc,
                 xsltStyleExtInitFunction styleInitFunc,
                 xsltStyleExtShutdownFunction styleShutdownFunc)
{
    xsltExtModulePtr cur;

    cur = (xsltExtModulePtr) xmlMalloc(sizeof(xsltExtModule));
    if (cur == ((void*)0)) {
        xsltTransformError(((void*)0), ((void*)0), ((void*)0),
                           "xsltNewExtModule : malloc failed\n");
        return (((void*)0));
    }
    cur->initFunc = initFunc;
    cur->shutdownFunc = shutdownFunc;
    cur->styleInitFunc = styleInitFunc;
    cur->styleShutdownFunc = styleShutdownFunc;
    return (cur);
}
