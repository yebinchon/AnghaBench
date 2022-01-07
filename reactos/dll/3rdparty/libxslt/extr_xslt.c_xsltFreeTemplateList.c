
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltTemplatePtr ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int xsltFreeTemplate (TYPE_1__*) ;

__attribute__((used)) static void
xsltFreeTemplateList(xsltTemplatePtr template) {
    xsltTemplatePtr cur;

    while (template != ((void*)0)) {
 cur = template;
 template = template->next;
 xsltFreeTemplate(cur);
    }
}
