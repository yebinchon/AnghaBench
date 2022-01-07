
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltExtDefPtr ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int xsltFreeExtDef (TYPE_1__*) ;

__attribute__((used)) static void
xsltFreeExtDefList(xsltExtDefPtr extensiond)
{
    xsltExtDefPtr cur;

    while (extensiond != ((void*)0)) {
        cur = extensiond;
        extensiond = extensiond->next;
        xsltFreeExtDef(cur);
    }
}
