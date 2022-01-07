
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xmlDocPtr ;
struct TYPE_10__ {int * parent; struct TYPE_10__* doc; int dict; int * prev; int * next; } ;
struct TYPE_9__ {int dict; TYPE_1__* cache; } ;
struct TYPE_8__ {scalar_t__ nbRVT; int dbgReusedRVTs; TYPE_3__* RVT; } ;


 int XSLT_MARK_RES_TREE_FRAG (TYPE_3__*) ;
 int xmlDictReference (int ) ;
 TYPE_3__* xmlNewDoc (int *) ;

xmlDocPtr
xsltCreateRVT(xsltTransformContextPtr ctxt)
{
    xmlDocPtr container;





    if (ctxt == ((void*)0))
 return(((void*)0));




    if (ctxt->cache->RVT) {
 container = ctxt->cache->RVT;
 ctxt->cache->RVT = (xmlDocPtr) container->next;

 container->next = ((void*)0);
 container->prev = ((void*)0);
 if (ctxt->cache->nbRVT > 0)
     ctxt->cache->nbRVT--;



 return(container);
    }

    container = xmlNewDoc(((void*)0));
    if (container == ((void*)0))
 return(((void*)0));
    container->dict = ctxt->dict;
    xmlDictReference(container->dict);
    XSLT_MARK_RES_TREE_FRAG(container);
    container->doc = container;
    container->parent = ((void*)0);
    return(container);
}
