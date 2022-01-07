
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltDocumentPtr ;
typedef int xsltDocument ;
typedef int xmlNodePtr ;
typedef scalar_t__ xmlDocPtr ;
struct TYPE_8__ {struct TYPE_8__* next; scalar_t__ doc; } ;
struct TYPE_7__ {TYPE_2__* docList; } ;


 int XSLT_IS_RES_TREE_FRAG (scalar_t__) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xsltTransformError (TYPE_1__*,int *,int ,char*) ;

xsltDocumentPtr
xsltNewDocument(xsltTransformContextPtr ctxt, xmlDocPtr doc) {
    xsltDocumentPtr cur;

    cur = (xsltDocumentPtr) xmlMalloc(sizeof(xsltDocument));
    if (cur == ((void*)0)) {
 xsltTransformError(ctxt, ((void*)0), (xmlNodePtr) doc,
  "xsltNewDocument : malloc failed\n");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xsltDocument));
    cur->doc = doc;
    if (ctxt != ((void*)0)) {
        if (! XSLT_IS_RES_TREE_FRAG(doc)) {
     cur->next = ctxt->docList;
     ctxt->docList = cur;
 }
    }
    return(cur);
}
