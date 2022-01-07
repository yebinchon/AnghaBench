
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut32 ;
typedef scalar_t__ ut16 ;
struct TYPE_7__ {int class_idx; } ;
struct TYPE_8__ {TYPE_1__ cp_method; } ;
struct TYPE_9__ {scalar_t__ tag; TYPE_2__ info; } ;
typedef int RCore ;
typedef int RBinJavaObj ;
typedef TYPE_3__ RBinJavaCPTypeObj ;


 scalar_t__ R_BIN_JAVA_CP_FIELDREF ;
 scalar_t__ R_BIN_JAVA_CP_INTERFACEMETHOD_REF ;
 scalar_t__ R_BIN_JAVA_CP_METHODREF ;
 int free (char*) ;
 char* malloc (int) ;
 char* r_bin_java_get_item_desc_from_bin_cp_list (int *,TYPE_3__*) ;
 TYPE_3__* r_bin_java_get_item_from_bin_cp_list (int *,scalar_t__) ;
 char* r_bin_java_get_item_name_from_bin_cp_list (int *,TYPE_3__*) ;
 char* r_bin_java_get_name_from_bin_cp_list (int *,int ) ;
 char* r_bin_java_unmangle_without_flags (char*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char * r_cmd_java_get_descriptor (RCore *core, RBinJavaObj *bin, ut16 idx) {
 char *class_name = ((void*)0), *fullname = ((void*)0), *name = ((void*)0), *descriptor = ((void*)0);
 RBinJavaCPTypeObj * obj = r_bin_java_get_item_from_bin_cp_list (bin, idx);
 char * prototype = ((void*)0);
 if (idx == 0) {
  prototype = strdup ("NULL");
  return prototype;
 }

 if (obj->tag == R_BIN_JAVA_CP_INTERFACEMETHOD_REF ||
  obj->tag == R_BIN_JAVA_CP_METHODREF ||
  obj->tag == R_BIN_JAVA_CP_FIELDREF) {
  class_name = r_bin_java_get_name_from_bin_cp_list (bin, obj->info.cp_method.class_idx);
  name = r_bin_java_get_item_name_from_bin_cp_list (bin, obj);
  descriptor = r_bin_java_get_item_desc_from_bin_cp_list (bin, obj);
 }

 if (class_name && name) {
  ut32 fn_len = 0;
  fn_len += strlen (class_name);
  fn_len += strlen (name);
  fn_len += 2;
  fullname = malloc (fn_len);
  snprintf (fullname, fn_len, "%s.%s", class_name, name);
 }
 if (fullname) {
  prototype = r_bin_java_unmangle_without_flags (fullname, descriptor);
 }
 free (class_name);
 free (name);
 free (descriptor);
 free (fullname);
 return prototype;
}
