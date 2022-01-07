
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct duplicate_flag_t {int ret; int word; } ;
struct TYPE_6__ {int name; } ;
typedef TYPE_1__ RFlagItem ;


 TYPE_1__* r_flag_item_clone (TYPE_1__*) ;
 int r_list_append (int ,TYPE_1__*) ;
 scalar_t__ r_str_glob (int ,int ) ;

__attribute__((used)) static bool duplicate_flag(RFlagItem *flag, void *u) {
 struct duplicate_flag_t *user = (struct duplicate_flag_t *)u;

 if (r_str_glob (flag->name, user->word)) {
  RFlagItem *cloned_item = r_flag_item_clone (flag);
  if (!cloned_item) {
   return 0;
  }
  r_list_append (user->ret, cloned_item);
 }
 return 1;
}
