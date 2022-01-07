
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltCompMatchPtr ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int xsltFreeCompMatch (TYPE_1__*) ;

void
xsltFreeCompMatchList(xsltCompMatchPtr comp) {
    xsltCompMatchPtr cur;

    while (comp != ((void*)0)) {
 cur = comp;
 comp = comp->next;
 xsltFreeCompMatch(cur);
    }
}
