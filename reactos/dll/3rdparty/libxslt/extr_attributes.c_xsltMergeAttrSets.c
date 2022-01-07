
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xsltStylePreCompPtr ;
typedef TYPE_2__* xsltAttrSetPtr ;
typedef TYPE_3__* xsltAttrElemPtr ;
struct TYPE_10__ {TYPE_1__* psvi; } ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_4__* attr; } ;
struct TYPE_8__ {TYPE_3__* attrs; } ;
struct TYPE_7__ {scalar_t__ name; scalar_t__ ns; } ;


 void* xsltNewAttrElem (TYPE_4__*) ;

__attribute__((used)) static void
xsltMergeAttrSets(xsltAttrSetPtr set, xsltAttrSetPtr other) {
    xsltAttrElemPtr cur;
    xsltAttrElemPtr old = other->attrs;
    int add;

    while (old != ((void*)0)) {



 cur = set->attrs;
 add = 1;
 while (cur != ((void*)0)) {
            xsltStylePreCompPtr curComp = cur->attr->psvi;
            xsltStylePreCompPtr oldComp = old->attr->psvi;

            if ((curComp->name == oldComp->name) &&
                (curComp->ns == oldComp->ns)) {
                add = 0;
                break;
            }
     if (cur->next == ((void*)0))
  break;
            cur = cur->next;
 }

 if (add == 1) {
     if (cur == ((void*)0)) {
  set->attrs = xsltNewAttrElem(old->attr);
     } else if (add) {
  cur->next = xsltNewAttrElem(old->attr);
     }
 }

 old = old->next;
    }
}
