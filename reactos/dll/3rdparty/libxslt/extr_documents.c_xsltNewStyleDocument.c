
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltDocumentPtr ;
typedef int xsltDocument ;
typedef int xmlNodePtr ;
typedef scalar_t__ xmlDocPtr ;
struct TYPE_8__ {struct TYPE_8__* next; scalar_t__ doc; } ;
struct TYPE_7__ {TYPE_2__* docList; } ;


 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xsltTransformError (int *,TYPE_1__*,int ,char*) ;

xsltDocumentPtr
xsltNewStyleDocument(xsltStylesheetPtr style, xmlDocPtr doc) {
    xsltDocumentPtr cur;

    cur = (xsltDocumentPtr) xmlMalloc(sizeof(xsltDocument));
    if (cur == ((void*)0)) {
 xsltTransformError(((void*)0), style, (xmlNodePtr) doc,
  "xsltNewStyleDocument : malloc failed\n");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xsltDocument));
    cur->doc = doc;
    if (style != ((void*)0)) {
 cur->next = style->docList;
 style->docList = cur;
    }
    return(cur);
}
