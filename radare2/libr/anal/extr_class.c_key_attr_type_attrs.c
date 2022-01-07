
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* sdb_fmt (char*,char const*,char const*) ;

__attribute__((used)) static char *key_attr_type_attrs(const char *class_name, const char *attr_type) {
 return sdb_fmt ("attr.%s.%s", class_name, attr_type);
}
