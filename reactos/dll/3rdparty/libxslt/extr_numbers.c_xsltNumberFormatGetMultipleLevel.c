
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef int * xsltCompMatchPtr ;
typedef scalar_t__ xmlXPathParserContextPtr ;
typedef TYPE_2__* xmlNodePtr ;
struct TYPE_17__ {scalar_t__ type; } ;
struct TYPE_16__ {TYPE_14__* xpathCtxt; } ;
struct TYPE_15__ {TYPE_2__* node; } ;


 scalar_t__ XML_DOCUMENT_NODE ;
 int xmlXPathFreeParserContext (scalar_t__) ;
 scalar_t__ xmlXPathNewParserContext (int *,TYPE_14__*) ;
 TYPE_2__* xmlXPathNextAncestor (scalar_t__,TYPE_2__*) ;
 TYPE_2__* xmlXPathNextPrecedingSibling (scalar_t__,TYPE_2__*) ;
 scalar_t__ xsltTestCompMatchCount (TYPE_1__*,TYPE_2__*,int *,TYPE_2__*) ;
 scalar_t__ xsltTestCompMatchList (TYPE_1__*,TYPE_2__*,int *) ;

__attribute__((used)) static int
xsltNumberFormatGetMultipleLevel(xsltTransformContextPtr context,
     xmlNodePtr node,
     xsltCompMatchPtr countPat,
     xsltCompMatchPtr fromPat,
     double *array,
     int max)
{
    int amount = 0;
    int cnt;
    xmlNodePtr ancestor;
    xmlNodePtr preceding;
    xmlXPathParserContextPtr parser;

    context->xpathCtxt->node = node;
    parser = xmlXPathNewParserContext(((void*)0), context->xpathCtxt);
    if (parser) {

 for (ancestor = node;
      (ancestor != ((void*)0)) && (ancestor->type != XML_DOCUMENT_NODE);
      ancestor = xmlXPathNextAncestor(parser, ancestor)) {

     if ((fromPat != ((void*)0)) &&
  xsltTestCompMatchList(context, ancestor, fromPat))
  break;

     if (xsltTestCompMatchCount(context, ancestor, countPat, node)) {

  cnt = 1;
  for (preceding =
                        xmlXPathNextPrecedingSibling(parser, ancestor);
       preceding != ((void*)0);
       preceding =
          xmlXPathNextPrecedingSibling(parser, preceding)) {

             if (xsltTestCompMatchCount(context, preceding, countPat,
                                               node))
   cnt++;
  }
  array[amount++] = (double)cnt;
  if (amount >= max)
      break;
     }
 }
 xmlXPathFreeParserContext(parser);
    }
    return amount;
}
