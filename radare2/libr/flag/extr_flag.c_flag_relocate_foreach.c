
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct flag_relocate_t {scalar_t__ neg_mask; scalar_t__ off; scalar_t__ off_mask; scalar_t__ to; int n; int f; } ;
struct TYPE_4__ {scalar_t__ offset; } ;
typedef TYPE_1__ RFlagItem ;


 int update_flag_item_offset (int ,TYPE_1__*,scalar_t__,int,int) ;

__attribute__((used)) static bool flag_relocate_foreach(RFlagItem *fi, void *user) {
 struct flag_relocate_t *u = (struct flag_relocate_t *)user;
 ut64 fn = fi->offset & u->neg_mask;
 ut64 on = u->off & u->neg_mask;
 if (fn == on) {
  ut64 fm = fi->offset & u->off_mask;
  ut64 om = u->to & u->off_mask;
  update_flag_item_offset (u->f, fi, (u->to & u->neg_mask) + fm + om, 0, 0);
  u->n++;
 }
 return 1;
}
