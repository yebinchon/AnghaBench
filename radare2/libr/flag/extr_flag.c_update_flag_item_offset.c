
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_8__ {scalar_t__ offset; } ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ RFlagsAtOffset ;
typedef TYPE_2__ RFlagItem ;
typedef int RFlag ;


 TYPE_1__* flags_at_offset (int *,scalar_t__) ;
 int r_list_append (int ,TYPE_2__*) ;
 int remove_offsetmap (int *,TYPE_2__*) ;

__attribute__((used)) static bool update_flag_item_offset(RFlag *f, RFlagItem *item, ut64 newoff, bool is_new, bool force) {
 if (item->offset != newoff || force) {
  if (!is_new) {
   remove_offsetmap (f, item);
  }
  item->offset = newoff;

  RFlagsAtOffset *flagsAtOffset = flags_at_offset (f, newoff);
  if (!flagsAtOffset) {
   return 0;
  }

  r_list_append (flagsAtOffset->flags, item);
  return 1;
 }

 return 0;
}
