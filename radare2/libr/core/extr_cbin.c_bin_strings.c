
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ name; scalar_t__ info; } ;
struct TYPE_6__ {int bin; int config; } ;
typedef int RList ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RBinPlugin ;
typedef int RBinFile ;


 scalar_t__ IS_MODE_JSON (int) ;
 int _print_strings (TYPE_1__*,int *,int,int) ;
 int * r_bin_cur (int ) ;
 TYPE_2__* r_bin_file_cur_plugin (int *) ;
 int * r_bin_get_strings (int ) ;
 int r_config_get_i (int ,char*) ;
 int r_cons_print (char*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;

__attribute__((used)) static bool bin_strings(RCore *r, int mode, int va) {
 RList *list;
 RBinFile *binfile = r_bin_cur (r->bin);
 RBinPlugin *plugin = r_bin_file_cur_plugin (binfile);
 int rawstr = r_config_get_i (r->config, "bin.rawstr");
 if (!binfile) {
  return 0;
 }
 if (!r_config_get_i (r->config, "bin.strings")) {
  return 0;
 }
 if (!plugin) {
  return 0;
 }
 if (plugin->info && plugin->name) {
  if (strcmp (plugin->name, "any") == 0 && !rawstr) {
   if (IS_MODE_JSON (mode)) {
    r_cons_print("[]");
   }
   return 0;
  }
 }

 if (!(list = r_bin_get_strings (r->bin))) {
  return 0;
 }
 _print_strings (r, list, mode, va);
 return 1;
}
