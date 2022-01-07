
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * xsltTransformContextPtr ;
typedef TYPE_2__* xsltStackElemPtr ;
typedef int xmlChar ;
struct TYPE_5__ {TYPE_1__* comp; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 scalar_t__ XSLT_FUNC_PARAM ;
 scalar_t__ XSLT_FUNC_WITHPARAM ;
 TYPE_2__* xsltStackLookup (int *,int const*,int const*) ;

__attribute__((used)) static int
xsltCheckStackElem(xsltTransformContextPtr ctxt, const xmlChar *name,
            const xmlChar *nameURI) {
    xsltStackElemPtr cur;

    if ((ctxt == ((void*)0)) || (name == ((void*)0)))
 return(-1);

    cur = xsltStackLookup(ctxt, name, nameURI);
    if (cur == ((void*)0))
        return(0);
    if (cur->comp != ((void*)0)) {
        if (cur->comp->type == XSLT_FUNC_WITHPARAM)
     return(3);
 else if (cur->comp->type == XSLT_FUNC_PARAM)
     return(2);
    }

    return(1);
}
