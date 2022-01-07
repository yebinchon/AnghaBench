
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xsltExtModulePtr ;
typedef TYPE_1__* xsltExtDataPtr ;
typedef int xsltExtData ;
struct TYPE_3__ {void* extData; int * extModule; } ;


 scalar_t__ xmlMalloc (int) ;
 int xsltTransformError (int *,int *,int *,char*) ;

__attribute__((used)) static xsltExtDataPtr
xsltNewExtData(xsltExtModulePtr extModule, void *extData)
{
    xsltExtDataPtr cur;

    if (extModule == ((void*)0))
        return (((void*)0));
    cur = (xsltExtDataPtr) xmlMalloc(sizeof(xsltExtData));
    if (cur == ((void*)0)) {
        xsltTransformError(((void*)0), ((void*)0), ((void*)0),
                           "xsltNewExtData : malloc failed\n");
        return (((void*)0));
    }
    cur->extModule = extModule;
    cur->extData = extData;
    return (cur);
}
