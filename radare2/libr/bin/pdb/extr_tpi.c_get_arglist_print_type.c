
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void get_arglist_print_type(void *type, char **name) {
 (void) type;
 int name_len = 0;

 name_len = strlen ("arg_list");
 *name = (char *) malloc (name_len + 1);
 if (!(*name)) {
  return;
 }

 strcpy (*name, "arg_list");
}
