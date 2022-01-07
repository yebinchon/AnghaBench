
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltStackElemPtr ;
typedef int xsltStackElem ;
typedef TYPE_4__* xmlDocPtr ;
struct TYPE_15__ {scalar_t__ psvi; scalar_t__ next; } ;
struct TYPE_14__ {struct TYPE_14__* next; TYPE_2__* context; TYPE_4__* fragment; int * value; } ;
struct TYPE_13__ {TYPE_1__* cache; } ;
struct TYPE_12__ {int nbStackItems; int dbgCachedVars; TYPE_3__* stackItems; } ;


 scalar_t__ XSLT_RVT_FUNC_RESULT ;
 scalar_t__ XSLT_RVT_LOCAL ;
 int memset (TYPE_3__*,int ,int) ;
 int xmlFree (TYPE_3__*) ;
 int xmlGenericError (int ,char*,scalar_t__) ;
 int xmlGenericErrorContext ;
 int xmlXPathFreeObject (int *) ;
 int xsltRegisterLocalRVT (TYPE_2__*,TYPE_4__*) ;
 int xsltReleaseRVT (TYPE_2__*,TYPE_4__*) ;

__attribute__((used)) static void
xsltFreeStackElem(xsltStackElemPtr elem) {
    if (elem == ((void*)0))
 return;
    if (elem->value != ((void*)0))
 xmlXPathFreeObject(elem->value);



    if (elem->context) {
 xmlDocPtr cur;

 while (elem->fragment != ((void*)0)) {
     cur = elem->fragment;
     elem->fragment = (xmlDocPtr) cur->next;

            if (cur->psvi == XSLT_RVT_LOCAL) {
  xsltReleaseRVT(elem->context, cur);
            } else if (cur->psvi == XSLT_RVT_FUNC_RESULT) {
                xsltRegisterLocalRVT(elem->context, cur);
                cur->psvi = XSLT_RVT_FUNC_RESULT;
            } else {
                xmlGenericError(xmlGenericErrorContext,
                        "xsltFreeStackElem: Unexpected RVT flag %p\n",
                        cur->psvi);
            }
 }
    }



    if (elem->context && (elem->context->cache->nbStackItems < 50)) {



 xsltTransformContextPtr ctxt = elem->context;
 memset(elem, 0, sizeof(xsltStackElem));
 elem->context = ctxt;
 elem->next = ctxt->cache->stackItems;
 ctxt->cache->stackItems = elem;
 ctxt->cache->nbStackItems++;



 return;
    }
    xmlFree(elem);
}
