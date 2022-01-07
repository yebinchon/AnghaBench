
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* flagname_attr (char*,char const*,char const*) ;

__attribute__((used)) static char *flagname_vtable(const char *class_name, const char *vtable_id) {
 return flagname_attr ("vtable", class_name, vtable_id);
}
