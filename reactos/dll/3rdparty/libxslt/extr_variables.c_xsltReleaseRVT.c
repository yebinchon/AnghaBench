
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef int xsltDocumentPtr ;
typedef int xmlRefTablePtr ;
typedef scalar_t__ xmlNodePtr ;
typedef int xmlIDTablePtr ;
typedef TYPE_3__* xmlDocPtr ;
struct TYPE_9__ {int * _private; scalar_t__ next; int * psvi; int * refs; int * ids; int * last; int * children; } ;
struct TYPE_8__ {TYPE_1__* cache; } ;
struct TYPE_7__ {int nbRVT; int dbgCachedRVTs; TYPE_3__* RVT; } ;


 int xmlFree (int *) ;
 int xmlFreeDoc (TYPE_3__*) ;
 int xmlFreeIDTable (int ) ;
 int xmlFreeNodeList (int *) ;
 int xmlFreeRefTable (int ) ;
 int xsltFreeDocumentKeys (int ) ;

void
xsltReleaseRVT(xsltTransformContextPtr ctxt, xmlDocPtr RVT)
{
    if (RVT == ((void*)0))
 return;

    if (ctxt && (ctxt->cache->nbRVT < 40)) {




 if (RVT->_private != ((void*)0)) {
     xsltFreeDocumentKeys((xsltDocumentPtr) RVT->_private);
     xmlFree(RVT->_private);
     RVT->_private = ((void*)0);
 }




 if (RVT->children != ((void*)0)) {
     xmlFreeNodeList(RVT->children);
     RVT->children = ((void*)0);
     RVT->last = ((void*)0);
 }
 if (RVT->ids != ((void*)0)) {
     xmlFreeIDTable((xmlIDTablePtr) RVT->ids);
     RVT->ids = ((void*)0);
 }
 if (RVT->refs != ((void*)0)) {
     xmlFreeRefTable((xmlRefTablePtr) RVT->refs);
     RVT->refs = ((void*)0);
 }




 RVT->psvi = ((void*)0);

 RVT->next = (xmlNodePtr) ctxt->cache->RVT;
 ctxt->cache->RVT = RVT;

 ctxt->cache->nbRVT++;




 return;
    }



    if (RVT->_private != ((void*)0)) {
 xsltFreeDocumentKeys((xsltDocumentPtr) RVT->_private);
 xmlFree(RVT->_private);
    }
    xmlFreeDoc(RVT);
}
