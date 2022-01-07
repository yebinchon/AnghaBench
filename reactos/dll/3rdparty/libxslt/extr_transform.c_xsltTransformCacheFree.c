
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformCachePtr ;
typedef TYPE_1__* xsltStackElemPtr ;
typedef int xsltDocumentPtr ;
typedef TYPE_3__* xmlDocPtr ;
struct TYPE_8__ {TYPE_1__* _private; scalar_t__ next; } ;
struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* stackItems; TYPE_3__* RVT; } ;


 int xmlFree (TYPE_1__*) ;
 int xmlFreeDoc (TYPE_3__*) ;
 int xsltFreeDocumentKeys (int ) ;

__attribute__((used)) static void
xsltTransformCacheFree(xsltTransformCachePtr cache)
{
    if (cache == ((void*)0))
 return;



    if (cache->RVT) {
 xmlDocPtr tmp, cur = cache->RVT;
 while (cur) {
     tmp = cur;
     cur = (xmlDocPtr) cur->next;
     if (tmp->_private != ((void*)0)) {



  xsltFreeDocumentKeys((xsltDocumentPtr) tmp->_private);
  xmlFree(tmp->_private);
     }
     xmlFreeDoc(tmp);
 }
    }



    if (cache->stackItems) {
 xsltStackElemPtr tmp, cur = cache->stackItems;
 while (cur) {
     tmp = cur;
     cur = cur->next;




     xmlFree(tmp);
 }
    }
    xmlFree(cache);
}
