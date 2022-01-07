
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltDocumentPtr ;
typedef int * xmlDocPtr ;
struct TYPE_8__ {struct TYPE_8__* next; int * doc; } ;
struct TYPE_7__ {TYPE_3__* document; TYPE_1__* style; TYPE_3__* docList; } ;
struct TYPE_6__ {int * doc; } ;



xsltDocumentPtr
xsltFindDocument (xsltTransformContextPtr ctxt, xmlDocPtr doc) {
    xsltDocumentPtr ret;

    if ((ctxt == ((void*)0)) || (doc == ((void*)0)))
 return(((void*)0));




    ret = ctxt->docList;
    while (ret != ((void*)0)) {
 if (ret->doc == doc)
     return(ret);
 ret = ret->next;
    }
    if (doc == ctxt->style->doc)
 return(ctxt->document);
    return(((void*)0));
}
