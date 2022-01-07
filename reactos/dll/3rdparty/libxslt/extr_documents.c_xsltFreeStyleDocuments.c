
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef int * xsltNsMapPtr ;
typedef TYPE_2__* xsltDocumentPtr ;
struct TYPE_9__ {int doc; int main; struct TYPE_9__* next; } ;
struct TYPE_8__ {TYPE_2__* docList; } ;


 int * XSLT_GET_INTERNAL_NSMAP (TYPE_1__*) ;
 scalar_t__ XSLT_HAS_INTERNAL_NSMAP (TYPE_1__*) ;
 int xmlFree (TYPE_2__*) ;
 int xmlFreeDoc (int ) ;
 int xsltFreeDocumentKeys (TYPE_2__*) ;
 int xsltRestoreDocumentNamespaces (int *,int ) ;

void
xsltFreeStyleDocuments(xsltStylesheetPtr style) {
    xsltDocumentPtr doc, cur;




    if (style == ((void*)0))
 return;
    cur = style->docList;
    while (cur != ((void*)0)) {
 doc = cur;
 cur = cur->next;







 xsltFreeDocumentKeys(doc);
 if (!doc->main)
     xmlFreeDoc(doc->doc);
        xmlFree(doc);
    }
}
