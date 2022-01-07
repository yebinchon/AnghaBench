
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int const) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void get_procedure_print_type(void *type, char **name) {
 const int name_len = strlen ("proc ");
 *name = (char *) malloc (name_len + 1);
 if (!(*name)) {
  return;
 }

 strcpy (*name, "proc ");
}
