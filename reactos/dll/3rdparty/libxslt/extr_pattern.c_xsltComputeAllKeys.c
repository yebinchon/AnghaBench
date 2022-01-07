
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xmlNodePtr ;
struct TYPE_11__ {int * _private; } ;
struct TYPE_10__ {TYPE_5__* doc; } ;
struct TYPE_9__ {int state; int inst; int * document; } ;


 int XSLT_STATE_STOPPED ;
 int xsltInitAllDocKeys (TYPE_1__*) ;
 int * xsltNewDocument (TYPE_1__*,TYPE_5__*) ;
 int xsltTransformError (TYPE_1__*,int *,int ,char*) ;

__attribute__((used)) static int
xsltComputeAllKeys(xsltTransformContextPtr ctxt, xmlNodePtr contextNode)
{
    if ((ctxt == ((void*)0)) || (contextNode == ((void*)0))) {
 xsltTransformError(ctxt, ((void*)0), ctxt->inst,
     "Internal error in xsltComputeAllKeys(): "
     "Bad arguments.\n");
 return(-1);
    }

    if (ctxt->document == ((void*)0)) {



 if (contextNode->doc->_private != ((void*)0))
     goto doc_info_mismatch;



 ctxt->document = xsltNewDocument(ctxt, contextNode->doc);
 if (ctxt->document == ((void*)0))
     return(-1);
    }
    return xsltInitAllDocKeys(ctxt);

doc_info_mismatch:
    xsltTransformError(ctxt, ((void*)0), ctxt->inst,
 "Internal error in xsltComputeAllKeys(): "
 "The context's document info doesn't match the "
 "document info of the current result tree.\n");
    ctxt->state = XSLT_STATE_STOPPED;
    return(-1);
}
