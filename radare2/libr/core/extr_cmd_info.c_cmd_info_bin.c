
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ file; int bin; } ;
typedef TYPE_1__ RCore ;
typedef int RBinObject ;


 int R_CORE_BIN_ACC_INFO ;
 int R_MODE_ARRAY ;
 int R_MODE_JSON ;
 scalar_t__ bin_is_executable (int *) ;
 int eprintf (char*) ;
 int * r_bin_cur_object (int ) ;
 int r_cons_strcat (char*) ;
 int r_core_bin_info (TYPE_1__*,int ,int,int,int *,int *) ;
 int r_core_file_info (TYPE_1__*,int) ;

__attribute__((used)) static void cmd_info_bin(RCore *core, int va, int mode) {
 RBinObject *obj = r_bin_cur_object (core->bin);
 int array = 0;
 if (core->file) {
  if ((mode & R_MODE_JSON) && !(mode & R_MODE_ARRAY)) {
   mode = R_MODE_JSON;
   r_cons_strcat ("{\"core\":");
  }
  if ((mode & R_MODE_JSON) && (mode & R_MODE_ARRAY)) {
   mode = R_MODE_JSON;
   array = 1;
   r_cons_strcat (",\"core\":");
  }
  r_core_file_info (core, mode);
  if (bin_is_executable (obj)) {
   if ((mode & R_MODE_JSON)) {
    r_cons_strcat (",\"bin\":");
   }
   r_core_bin_info (core, R_CORE_BIN_ACC_INFO, mode, va, ((void*)0), ((void*)0));
  }
  if ((mode & R_MODE_JSON) && array == 0) {
   r_cons_strcat ("}\n");
  }
 } else {
  eprintf ("No file selected\n");
 }
}
