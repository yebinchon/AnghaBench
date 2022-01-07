
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef int xsltStylePreCompPtr ;
typedef TYPE_2__* xsltElemPreCompPtr ;
struct TYPE_6__ {scalar_t__ type; int (* free ) (TYPE_2__*) ;struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* preComps; } ;


 scalar_t__ XSLT_FUNC_EXTENSION ;
 int stub1 (TYPE_2__*) ;
 int xsltFreeStylePreComp (int ) ;

void
xsltFreeStylePreComps(xsltStylesheetPtr style) {
    xsltElemPreCompPtr cur, next;

    if (style == ((void*)0))
 return;

    cur = style->preComps;
    while (cur != ((void*)0)) {
 next = cur->next;
 if (cur->type == XSLT_FUNC_EXTENSION)
     cur->free(cur);
 else
     xsltFreeStylePreComp((xsltStylePreCompPtr) cur);
 cur = next;
    }
}
