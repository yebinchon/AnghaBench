
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SUCCESS ;
 char* get_help (char*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int pretty_print (char*) ;

void phpdbg_do_help_cmd(char *type) {
 char *help;

 if (!type) {
  pretty_print(get_help("overview!"));
  return;
 }

 help = get_help(type);

 if (!help || memcmp(help, "", sizeof("")) == SUCCESS) {
  pretty_print(get_help("overview!"));
  pretty_print(
   "\nrequested help page could not be found");
  return;
 }

 pretty_print(help);
}
