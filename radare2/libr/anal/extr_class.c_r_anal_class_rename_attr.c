
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalClassErr ;
typedef int RAnalClassAttrType ;
typedef int RAnal ;


 int R_ANAL_CLASS_ERR_OTHER ;
 int free (char*) ;
 int r_anal_class_rename_attr_raw (int *,char*,int ,char*,char*) ;
 char* r_str_sanitize_sdb_key (char const*) ;

__attribute__((used)) static RAnalClassErr r_anal_class_rename_attr(RAnal *anal, const char *class_name, RAnalClassAttrType attr_type, const char *attr_id_old, const char *attr_id_new) {
 char *class_name_sanitized = r_str_sanitize_sdb_key (class_name);
 if (!class_name_sanitized) {
  return R_ANAL_CLASS_ERR_OTHER;
 }
 char *attr_id_old_sanitized = r_str_sanitize_sdb_key (attr_id_old);
 if (!attr_id_old_sanitized) {
  free (class_name_sanitized);
  return R_ANAL_CLASS_ERR_OTHER;
 }
 char *attr_id_new_sanitized = r_str_sanitize_sdb_key (attr_id_new);
 if (!attr_id_new_sanitized) {
  free (class_name_sanitized);
  free (attr_id_old_sanitized);
  return R_ANAL_CLASS_ERR_OTHER;
 }
 RAnalClassErr ret = r_anal_class_rename_attr_raw (anal, class_name_sanitized, attr_type, attr_id_old_sanitized, attr_id_new_sanitized);
 free (class_name_sanitized);
 free (attr_id_old_sanitized);
 free (attr_id_new_sanitized);
 return ret;
}
