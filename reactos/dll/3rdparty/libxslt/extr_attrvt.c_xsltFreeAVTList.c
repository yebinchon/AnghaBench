
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltAttrVTPtr ;
struct TYPE_3__ {struct TYPE_3__* next; } ;


 int xsltFreeAttrVT (TYPE_1__*) ;

void
xsltFreeAVTList(void *avt) {
    xsltAttrVTPtr cur = (xsltAttrVTPtr) avt, next;

    while (cur != ((void*)0)) {
        next = cur->next;
 xsltFreeAttrVT(cur);
 cur = next;
    }
}
