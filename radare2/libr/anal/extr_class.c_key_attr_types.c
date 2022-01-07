
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* sdb_fmt (char*,char const*) ;

__attribute__((used)) static char *key_attr_types(const char *name) {
 return sdb_fmt ("attrtypes.%s", name);
}
