
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * xsltTransformContextPtr ;
typedef TYPE_1__* xsltCompMatchPtr ;
typedef int * xmlNodePtr ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int xsltTestCompMatch (int *,TYPE_1__*,int *,int *,int *) ;

int
xsltTestCompMatchList(xsltTransformContextPtr ctxt, xmlNodePtr node,
               xsltCompMatchPtr comp) {
    int ret;

    if ((ctxt == ((void*)0)) || (node == ((void*)0)))
 return(-1);
    while (comp != ((void*)0)) {
 ret = xsltTestCompMatch(ctxt, comp, node, ((void*)0), ((void*)0));
 if (ret == 1)
     return(1);
 comp = comp->next;
    }
    return(0);
}
