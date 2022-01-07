
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xsltTransformContextPtr ;
typedef int * xsltCompMatchPtr ;
typedef TYPE_1__* xmlNsPtr ;
typedef TYPE_2__* xmlNodePtr ;
struct TYPE_8__ {scalar_t__ type; struct TYPE_8__* parent; struct TYPE_8__* last; struct TYPE_8__* prev; } ;
struct TYPE_7__ {scalar_t__ next; } ;


 scalar_t__ XML_ATTRIBUTE_NODE ;
 scalar_t__ XML_DOCB_DOCUMENT_NODE ;
 scalar_t__ XML_DOCUMENT_NODE ;
 scalar_t__ XML_DTD_NODE ;
 scalar_t__ XML_HTML_DOCUMENT_NODE ;
 scalar_t__ XML_NAMESPACE_DECL ;
 scalar_t__ XML_XINCLUDE_END ;
 scalar_t__ XML_XINCLUDE_START ;
 scalar_t__ xsltTestCompMatchCount (int ,TYPE_2__*,int *,TYPE_2__*) ;
 scalar_t__ xsltTestCompMatchList (int ,TYPE_2__*,int *) ;

__attribute__((used)) static int
xsltNumberFormatGetAnyLevel(xsltTransformContextPtr context,
       xmlNodePtr node,
       xsltCompMatchPtr countPat,
       xsltCompMatchPtr fromPat,
       double *array)
{
    int amount = 0;
    int cnt = 0;
    xmlNodePtr cur = node;

    while (cur != ((void*)0)) {

 if (xsltTestCompMatchCount(context, cur, countPat, node))
     cnt++;
 if ((fromPat != ((void*)0)) &&
     xsltTestCompMatchList(context, cur, fromPat)) {
     break;
 }


 if ((cur->type == XML_DOCUMENT_NODE) ||



            (cur->type == XML_HTML_DOCUMENT_NODE))
     break;

        if (cur->type == XML_NAMESPACE_DECL) {




            cur = (xmlNodePtr) ((xmlNsPtr) cur)->next;
        } else if (cur->type == XML_ATTRIBUTE_NODE) {
            cur = cur->parent;
        } else {
            while ((cur->prev != ((void*)0)) && ((cur->prev->type == XML_DTD_NODE) ||
                   (cur->prev->type == XML_XINCLUDE_START) ||
                   (cur->prev->type == XML_XINCLUDE_END)))
                cur = cur->prev;
            if (cur->prev != ((void*)0)) {
                for (cur = cur->prev; cur->last != ((void*)0); cur = cur->last);
            } else {
                cur = cur->parent;
            }
        }
    }

    array[amount++] = (double) cnt;

    return(amount);
}
