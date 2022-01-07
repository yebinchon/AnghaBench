
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int by_off; } ;
struct TYPE_11__ {int offset; } ;
struct TYPE_10__ {int flags; } ;
typedef TYPE_1__ RFlagsAtOffset ;
typedef TYPE_2__ RFlagItem ;
typedef TYPE_3__ RFlag ;


 TYPE_1__* r_flag_get_nearest_list (TYPE_3__*,int ,int ) ;
 int r_list_delete_data (int ,TYPE_2__*) ;
 scalar_t__ r_list_empty (int ) ;
 int r_return_if_fail (int) ;
 int r_skiplist_delete (int ,TYPE_1__*) ;

__attribute__((used)) static void remove_offsetmap(RFlag *f, RFlagItem *item) {
 r_return_if_fail (f && item);
 RFlagsAtOffset *flags = r_flag_get_nearest_list (f, item->offset, 0);
 if (flags) {
  r_list_delete_data (flags->flags, item);
  if (r_list_empty (flags->flags)) {
   r_skiplist_delete (f->by_off, flags);
  }
 }
}
