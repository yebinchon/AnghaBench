
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xmlDocPtr ;
struct TYPE_13__ {scalar_t__ psvi; scalar_t__ next; int * prev; } ;
struct TYPE_12__ {TYPE_2__* localRVT; } ;


 scalar_t__ XSLT_RVT_FUNC_RESULT ;
 scalar_t__ XSLT_RVT_GLOBAL ;
 scalar_t__ XSLT_RVT_LOCAL ;
 int xmlGenericError (int ,char*,scalar_t__) ;
 int xmlGenericErrorContext ;
 int xsltRegisterLocalRVT (TYPE_1__*,TYPE_2__*) ;
 int xsltRegisterPersistRVT (TYPE_1__*,TYPE_2__*) ;
 int xsltReleaseRVT (TYPE_1__*,TYPE_2__*) ;
 int xsltTransformError (TYPE_1__*,int *,int *,char*) ;

__attribute__((used)) static void
xsltReleaseLocalRVTs(xsltTransformContextPtr ctxt, xmlDocPtr base)
{
    xmlDocPtr cur = ctxt->localRVT, tmp;

    if (cur == base)
        return;
    if (cur->prev != ((void*)0))
        xsltTransformError(ctxt, ((void*)0), ((void*)0), "localRVT not head of list\n");


    ctxt->localRVT = base;
    if (base != ((void*)0))
        base->prev = ((void*)0);

    do {
        tmp = cur;
        cur = (xmlDocPtr) cur->next;
        if (tmp->psvi == XSLT_RVT_LOCAL) {
            xsltReleaseRVT(ctxt, tmp);
        } else if (tmp->psvi == XSLT_RVT_GLOBAL) {
            xsltRegisterPersistRVT(ctxt, tmp);
        } else if (tmp->psvi == XSLT_RVT_FUNC_RESULT) {




            xsltRegisterLocalRVT(ctxt, tmp);
            tmp->psvi = XSLT_RVT_FUNC_RESULT;
        } else {
            xmlGenericError(xmlGenericErrorContext,
                    "xsltReleaseLocalRVTs: Unexpected RVT flag %p\n",
                    tmp->psvi);
        }
    } while (cur != base);
}
