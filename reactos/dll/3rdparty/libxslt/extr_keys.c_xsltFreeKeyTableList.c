
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltKeyTablePtr ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int xsltFreeKeyTable (TYPE_1__*) ;

__attribute__((used)) static void
xsltFreeKeyTableList(xsltKeyTablePtr keyt) {
    xsltKeyTablePtr cur;

    while (keyt != ((void*)0)) {
 cur = keyt;
 keyt = keyt->next;
 xsltFreeKeyTable(cur);
    }
}
