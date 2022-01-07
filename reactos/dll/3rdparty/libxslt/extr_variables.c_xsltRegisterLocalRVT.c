
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef void* xmlNodePtr ;
typedef TYPE_2__* xmlDocPtr ;
struct TYPE_9__ {int flags; TYPE_2__* fragment; } ;
struct TYPE_8__ {int * prev; void* next; int psvi; } ;
struct TYPE_7__ {TYPE_2__* localRVT; int * contextVariable; } ;


 int XSLT_RVT_LOCAL ;
 TYPE_5__* XSLT_TCTXT_VARIABLE (TYPE_1__*) ;
 int XSLT_VAR_IN_SELECT ;

int
xsltRegisterLocalRVT(xsltTransformContextPtr ctxt,
       xmlDocPtr RVT)
{
    if ((ctxt == ((void*)0)) || (RVT == ((void*)0)))
 return(-1);

    RVT->prev = ((void*)0);
    RVT->psvi = XSLT_RVT_LOCAL;







    if ((ctxt->contextVariable != ((void*)0)) &&
 (XSLT_TCTXT_VARIABLE(ctxt)->flags & XSLT_VAR_IN_SELECT))
    {
 RVT->next = (xmlNodePtr) XSLT_TCTXT_VARIABLE(ctxt)->fragment;
 XSLT_TCTXT_VARIABLE(ctxt)->fragment = RVT;
 return(0);
    }





    RVT->next = (xmlNodePtr) ctxt->localRVT;
    if (ctxt->localRVT != ((void*)0))
 ctxt->localRVT->prev = (xmlNodePtr) RVT;
    ctxt->localRVT = RVT;
    return(0);
}
