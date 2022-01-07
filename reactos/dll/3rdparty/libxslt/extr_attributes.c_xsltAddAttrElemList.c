
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltAttrElemPtr ;
typedef int * xmlNodePtr ;
struct TYPE_5__ {struct TYPE_5__* next; } ;


 TYPE_1__* xsltNewAttrElem (int *) ;

__attribute__((used)) static xsltAttrElemPtr
xsltAddAttrElemList(xsltAttrElemPtr list, xmlNodePtr attr) {
    xsltAttrElemPtr next, cur;

    if (attr == ((void*)0))
 return(list);
    if (list == ((void*)0))
 return(xsltNewAttrElem(attr));
    cur = list;
    while (cur != ((void*)0)) {
 next = cur->next;
 if (next == ((void*)0)) {
     cur->next = xsltNewAttrElem(attr);
     return(list);
 }
 cur = next;
    }
    return(list);
}
