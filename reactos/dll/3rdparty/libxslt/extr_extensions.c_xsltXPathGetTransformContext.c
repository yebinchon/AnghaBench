
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * xsltTransformContextPtr ;
typedef TYPE_2__* xmlXPathParserContextPtr ;
struct TYPE_5__ {TYPE_1__* context; } ;
struct TYPE_4__ {int * extra; } ;



xsltTransformContextPtr
xsltXPathGetTransformContext(xmlXPathParserContextPtr ctxt)
{
    if ((ctxt == ((void*)0)) || (ctxt->context == ((void*)0)))
        return (((void*)0));
    return (ctxt->context->extra);
}
