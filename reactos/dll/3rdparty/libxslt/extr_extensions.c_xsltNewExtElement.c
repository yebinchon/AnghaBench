
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xsltTransformFunction ;
typedef int xsltPreComputeFunction ;
typedef TYPE_1__* xsltExtElementPtr ;
typedef int xsltExtElement ;
struct TYPE_3__ {int * transform; int precomp; } ;


 scalar_t__ xmlMalloc (int) ;
 int xsltTransformError (int *,int *,int *,char*) ;

__attribute__((used)) static xsltExtElementPtr
xsltNewExtElement(xsltPreComputeFunction precomp,
                  xsltTransformFunction transform)
{
    xsltExtElementPtr cur;

    if (transform == ((void*)0))
        return (((void*)0));

    cur = (xsltExtElementPtr) xmlMalloc(sizeof(xsltExtElement));
    if (cur == ((void*)0)) {
        xsltTransformError(((void*)0), ((void*)0), ((void*)0),
                           "xsltNewExtElement : malloc failed\n");
        return (((void*)0));
    }
    cur->precomp = precomp;
    cur->transform = transform;
    return (cur);
}
