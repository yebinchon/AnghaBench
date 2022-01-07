
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {char const* name; } ;
typedef int RNum ;
typedef int RList ;
typedef TYPE_1__ RFlagItem ;
typedef int RFlag ;


 int * r_flag_get_list (int *,int ) ;
 TYPE_1__* r_list_get_top (int const*) ;

__attribute__((used)) static const char *str_callback(RNum *user, ut64 off, int *ok) {
 RFlag *f = (RFlag*)user;
 if (ok) {
  *ok = 0;
 }
 if (f) {
  const RList *list = r_flag_get_list (f, off);
  RFlagItem *item = r_list_get_top (list);
  if (item) {
   if (ok) {
    *ok = 1;
   }
   return item->name;
  }
 }
 return ((void*)0);
}
