
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strstr (char*,char*) ;

__attribute__((used)) static char* is_type(char *type) {
 char *name = ((void*)0);
 if ((name = strstr (type, "=type")) ||
  (name = strstr (type, "=struct")) ||
  (name = strstr (type, "=union")) ||
  (name = strstr (type, "=enum")) ||
  (name = strstr (type, "=typedef")) ||
  (name = strstr (type, "=func"))) {
  return name;
 }
 return ((void*)0);
}
