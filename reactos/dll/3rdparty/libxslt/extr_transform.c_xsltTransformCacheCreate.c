
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xsltTransformCachePtr ;
typedef int xsltTransformCache ;


 int memset (int *,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xsltTransformError (int *,int *,int *,char*) ;

__attribute__((used)) static xsltTransformCachePtr
xsltTransformCacheCreate(void)
{
    xsltTransformCachePtr ret;

    ret = (xsltTransformCachePtr) xmlMalloc(sizeof(xsltTransformCache));
    if (ret == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0),
     "xsltTransformCacheCreate : malloc failed\n");
 return(((void*)0));
    }
    memset(ret, 0, sizeof(xsltTransformCache));
    return(ret);
}
