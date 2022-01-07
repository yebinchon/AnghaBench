
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ht_name; } ;
struct TYPE_7__ {char const* name; } ;
typedef TYPE_1__ RFlagItem ;
typedef TYPE_2__ RFlag ;


 char* filter_item_name (char const*) ;
 int free (char*) ;
 int ht_pp_insert (int ,char*,TYPE_1__*) ;
 int ht_pp_update_key (int ,char const*,char*) ;
 int set_name (TYPE_1__*,char*) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static bool update_flag_item_name(RFlag *f, RFlagItem *item, const char *newname, bool force) {
 if (!f || !item || !newname) {
  return 0;
 }
 if (!force && (item->name == newname || (item->name && !strcmp (item->name, newname)))) {
  return 0;
 }
 char *fname = filter_item_name (newname);
 if (!fname) {
  return 0;
 }
 bool res = (item->name)
  ? ht_pp_update_key (f->ht_name, item->name, fname)
  : ht_pp_insert (f->ht_name, fname, item);
 if (res) {
  set_name (item, fname);
  return 1;
 }
 free (fname);
 return 0;
}
