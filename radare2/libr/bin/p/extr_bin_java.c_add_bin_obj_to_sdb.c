
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int AllJavaBinObjs; } ;
typedef TYPE_1__ RBinJavaObj ;


 int DB ;
 int add_sdb_bin_obj (char*,TYPE_1__*) ;
 int free (char*) ;
 char* r_bin_java_build_obj_key (TYPE_1__*) ;

__attribute__((used)) static void add_bin_obj_to_sdb(RBinJavaObj *bin) {
 if (!bin) {
  return;
 }
 char *jvcname = r_bin_java_build_obj_key (bin);
 add_sdb_bin_obj (jvcname, bin);
 bin->AllJavaBinObjs = DB;
 free (jvcname);
}
