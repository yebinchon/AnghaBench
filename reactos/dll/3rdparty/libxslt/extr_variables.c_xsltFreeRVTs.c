
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xmlDocPtr ;
struct TYPE_6__ {int * _private; scalar_t__ next; } ;
struct TYPE_5__ {TYPE_2__* persistRVT; TYPE_2__* tmpRVT; TYPE_2__* localRVT; } ;


 int xmlFree (int *) ;
 int xmlFreeDoc (TYPE_2__*) ;
 int xsltFreeDocumentKeys (int *) ;

void
xsltFreeRVTs(xsltTransformContextPtr ctxt)
{
    xmlDocPtr cur, next;

    if (ctxt == ((void*)0))
 return;



    cur = ctxt->localRVT;
    while (cur != ((void*)0)) {
        next = (xmlDocPtr) cur->next;
 if (cur->_private != ((void*)0)) {
     xsltFreeDocumentKeys(cur->_private);
     xmlFree(cur->_private);
 }
 xmlFreeDoc(cur);
 cur = next;
    }
    ctxt->localRVT = ((void*)0);



    cur = ctxt->tmpRVT;
    while (cur != ((void*)0)) {
        next = (xmlDocPtr) cur->next;
 if (cur->_private != ((void*)0)) {
     xsltFreeDocumentKeys(cur->_private);
     xmlFree(cur->_private);
 }
 xmlFreeDoc(cur);
 cur = next;
    }
    ctxt->tmpRVT = ((void*)0);



    cur = ctxt->persistRVT;
    while (cur != ((void*)0)) {
        next = (xmlDocPtr) cur->next;
 if (cur->_private != ((void*)0)) {
     xsltFreeDocumentKeys(cur->_private);
     xmlFree(cur->_private);
 }
 xmlFreeDoc(cur);
 cur = next;
    }
    ctxt->persistRVT = ((void*)0);
}
