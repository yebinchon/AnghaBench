
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltAttrElemPtr ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int xsltFreeAttrElem (TYPE_1__*) ;

__attribute__((used)) static void
xsltFreeAttrElemList(xsltAttrElemPtr list) {
    xsltAttrElemPtr next;

    while (list != ((void*)0)) {
 next = list->next;
 xsltFreeAttrElem(list);
 list = next;
    }
}
