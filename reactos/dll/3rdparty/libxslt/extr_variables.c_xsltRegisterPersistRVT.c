
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef void* xmlNodePtr ;
typedef TYPE_2__* xmlDocPtr ;
struct TYPE_6__ {int * prev; void* next; int psvi; } ;
struct TYPE_5__ {TYPE_2__* persistRVT; } ;


 int XSLT_RVT_GLOBAL ;

int
xsltRegisterPersistRVT(xsltTransformContextPtr ctxt, xmlDocPtr RVT)
{
    if ((ctxt == ((void*)0)) || (RVT == ((void*)0))) return(-1);

    RVT->psvi = XSLT_RVT_GLOBAL;
    RVT->prev = ((void*)0);
    RVT->next = (xmlNodePtr) ctxt->persistRVT;
    if (ctxt->persistRVT != ((void*)0))
 ctxt->persistRVT->prev = (xmlNodePtr) RVT;
    ctxt->persistRVT = RVT;
    return(0);
}
