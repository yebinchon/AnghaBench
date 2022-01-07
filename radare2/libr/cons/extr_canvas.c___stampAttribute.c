
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attrs; scalar_t__ attr; int color; } ;
typedef TYPE_1__ RConsCanvas ;


 int ht_up_delete (int ,int) ;
 int ht_up_update (int ,int,void*) ;

__attribute__((used)) static void __stampAttribute(RConsCanvas *c, int loc, int length) {
 if (!c->color) {
  return;
 }
 int i;
 ht_up_update (c->attrs, loc, (void *)c->attr);
 for (i = 1; i < length; i++) {
  ht_up_delete (c->attrs, loc + i);
 }
}
