
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltAttrSetPtr ;
struct TYPE_4__ {int useAttrSets; int attrs; } ;


 int xmlFree (TYPE_1__*) ;
 int xsltFreeAttrElemList (int ) ;
 int xsltFreeUseAttrSetList (int ) ;

__attribute__((used)) static void
xsltFreeAttrSet(xsltAttrSetPtr set) {
    if (set == ((void*)0))
        return;

    xsltFreeAttrElemList(set->attrs);
    xsltFreeUseAttrSetList(set->useAttrSets);
    xmlFree(set);
}
