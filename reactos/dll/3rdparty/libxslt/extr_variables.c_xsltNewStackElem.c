
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltStackElemPtr ;
typedef int xsltStackElem ;
struct TYPE_9__ {TYPE_2__* context; struct TYPE_9__* next; } ;
struct TYPE_8__ {TYPE_1__* cache; } ;
struct TYPE_7__ {int dbgReusedVars; int nbStackItems; TYPE_3__* stackItems; } ;


 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xsltTransformError (int *,int *,int *,char*) ;

__attribute__((used)) static xsltStackElemPtr
xsltNewStackElem(xsltTransformContextPtr ctxt)
{
    xsltStackElemPtr ret;



    if (ctxt && ctxt->cache->stackItems) {
 ret = ctxt->cache->stackItems;
 ctxt->cache->stackItems = ret->next;
 ret->next = ((void*)0);
 ctxt->cache->nbStackItems--;



 return(ret);
    }
    ret = (xsltStackElemPtr) xmlMalloc(sizeof(xsltStackElem));
    if (ret == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0),
  "xsltNewStackElem : malloc failed\n");
 return(((void*)0));
    }
    memset(ret, 0, sizeof(xsltStackElem));
    ret->context = ctxt;
    return(ret);
}
