
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sdb_types; } ;
typedef TYPE_1__ RAnal ;


 int free (char*) ;
 int r_return_if_fail (int) ;
 int save_type_size (int ,char*) ;
 char* strdup (char const*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void __save_parsed_type_size(RAnal *anal, const char *parsed) {
 r_return_if_fail (anal && parsed);
 char *str = strdup (parsed);
 if (str) {
  char *ptr = ((void*)0);
  int offset = 0;
  while ((ptr = strstr (str + offset, "=struct\n")) ||
    (ptr = strstr (str + offset, "=union\n"))) {
   *ptr = 0;
   if (str + offset == ptr) {
    break;
   }
   char *name = ptr - 1;
   while (name > str && *name != '\n') {
    name--;
   }
   if (*name == '\n') {
    name++;
   }
   save_type_size (anal->sdb_types, name);
   *ptr = '=';
   offset = ptr + 1 - str;
  }
  free (str);
 }
}
