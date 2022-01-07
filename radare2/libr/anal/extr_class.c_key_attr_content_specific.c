
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* sdb_fmt (char*,char const*,char const*,char const*) ;

__attribute__((used)) static char *key_attr_content_specific(const char *class_name, const char *attr_type, const char *attr_id) {
 return sdb_fmt ("attr.%s.%s.%s.specific", class_name, attr_type, attr_id);
}
