
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltStackElemPtr ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int xsltFreeStackElem (TYPE_1__*) ;

void
xsltFreeStackElemList(xsltStackElemPtr elem) {
    xsltStackElemPtr next;

    while (elem != ((void*)0)) {
 next = elem->next;
 xsltFreeStackElem(elem);
 elem = next;
    }
}
