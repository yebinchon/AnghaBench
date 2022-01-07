
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n_sub; scalar_t__ selectedIndex; struct TYPE_3__** sub; } ;
typedef TYPE_1__ RPanelsMenuItem ;



void __clear_panels_menuRec(RPanelsMenuItem *pmi) {
 int i = 0;
 for(i = 0; i < pmi->n_sub; i++) {
  RPanelsMenuItem *sub = pmi->sub[i];
  if (sub) {
   sub->selectedIndex = 0;
   __clear_panels_menuRec (sub);
  }
 }
}
