
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltUseAttrSetPtr ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int xsltFreeUseAttrSet (TYPE_1__*) ;

__attribute__((used)) static void
xsltFreeUseAttrSetList(xsltUseAttrSetPtr list) {
    xsltUseAttrSetPtr next;

    while (list != ((void*)0)) {
 next = list->next;
 xsltFreeUseAttrSet(list);
 list = next;
    }
}
