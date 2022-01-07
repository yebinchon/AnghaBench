
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltExtDefPtr ;
typedef int xmlChar ;
struct TYPE_5__ {struct TYPE_5__* next; int URI; } ;
struct TYPE_4__ {int * nsDefs; } ;


 scalar_t__ xmlStrEqual (int const*,int ) ;

int
xsltCheckExtURI(xsltStylesheetPtr style, const xmlChar * URI)
{
    xsltExtDefPtr cur;

    if ((style == ((void*)0)) || (style->nsDefs == ((void*)0)))
        return (0);
    if (URI == ((void*)0))
        return (0);
    cur = (xsltExtDefPtr) style->nsDefs;
    while (cur != ((void*)0)) {
        if (xmlStrEqual(URI, cur->URI))
            return (1);
        cur = cur->next;
    }
    return (0);
}
