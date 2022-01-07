
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* r_str_sanitize_sdb_key (char const*) ;
 char* sdb_fmt (char*,char const*,char const*,char const*) ;

__attribute__((used)) static char *flagname_attr(const char *attr_type, const char *class_name, const char *attr_id) {
 char *class_name_sanitized = r_str_sanitize_sdb_key (class_name);
 if (!class_name_sanitized) {
  return ((void*)0);
 }
 char *attr_id_sanitized = r_str_sanitize_sdb_key (attr_id);
 if (!attr_id_sanitized) {
  free (class_name_sanitized);
  return ((void*)0);
 }
 char *r = sdb_fmt ("%s.%s.%s", attr_type, class_name, attr_id);
 free (class_name_sanitized);
 free (attr_id_sanitized);
 return r;
}
