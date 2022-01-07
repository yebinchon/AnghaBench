
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltKeyDefPtr ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int xsltFreeKeyDef (TYPE_1__*) ;

__attribute__((used)) static void
xsltFreeKeyDefList(xsltKeyDefPtr keyd) {
    xsltKeyDefPtr cur;

    while (keyd != ((void*)0)) {
 cur = keyd;
 keyd = keyd->next;
 xsltFreeKeyDef(cur);
    }
}
