
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* (* signature ) (int *,int ) ;} ;
struct TYPE_5__ {int bin; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RBinPlugin ;
typedef int RBinFile ;


 int IS_MODE_JSON (int) ;
 int free (char*) ;
 int * r_bin_cur (int ) ;
 TYPE_2__* r_bin_file_cur_plugin (int *) ;
 int r_cons_println (char const*) ;
 char* stub1 (int *,int ) ;

__attribute__((used)) static int bin_signature(RCore *r, int mode) {
 RBinFile *cur = r_bin_cur (r->bin);
 RBinPlugin *plg = r_bin_file_cur_plugin (cur);
 if (plg && plg->signature) {
  const char *signature = plg->signature (cur, IS_MODE_JSON (mode));
  r_cons_println (signature);
  free ((char*) signature);
  return 1;
 }
 return 0;
}
