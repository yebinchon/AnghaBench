
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltDocumentPtr ;
struct TYPE_7__ {int doc; int main; struct TYPE_7__* next; } ;
struct TYPE_6__ {TYPE_2__* styleList; TYPE_2__* docList; } ;


 int xmlFree (TYPE_2__*) ;
 int xmlFreeDoc (int ) ;
 int xsltFreeDocumentKeys (TYPE_2__*) ;

void
xsltFreeDocuments(xsltTransformContextPtr ctxt) {
    xsltDocumentPtr doc, cur;

    cur = ctxt->docList;
    while (cur != ((void*)0)) {
 doc = cur;
 cur = cur->next;
 xsltFreeDocumentKeys(doc);
 if (!doc->main)
     xmlFreeDoc(doc->doc);
        xmlFree(doc);
    }
    cur = ctxt->styleList;
    while (cur != ((void*)0)) {
 doc = cur;
 cur = cur->next;
 xsltFreeDocumentKeys(doc);
 if (!doc->main)
     xmlFreeDoc(doc->doc);
        xmlFree(doc);
    }
}
