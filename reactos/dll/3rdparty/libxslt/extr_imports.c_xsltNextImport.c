
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* parent; struct TYPE_4__* imports; } ;



xsltStylesheetPtr
xsltNextImport(xsltStylesheetPtr cur) {
    if (cur == ((void*)0))
 return(((void*)0));
    if (cur->imports != ((void*)0))
 return(cur->imports);
    if (cur->next != ((void*)0))
 return(cur->next) ;
    do {
 cur = cur->parent;
 if (cur == ((void*)0)) break;
 if (cur->next != ((void*)0)) return(cur->next);
    } while (cur != ((void*)0));
    return(cur);
}
