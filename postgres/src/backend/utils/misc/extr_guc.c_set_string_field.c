
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_string {int dummy; } ;


 int free (char*) ;
 int string_field_used (struct config_string*,char*) ;

__attribute__((used)) static void
set_string_field(struct config_string *conf, char **field, char *newval)
{
 char *oldval = *field;


 *field = newval;


 if (oldval && !string_field_used(conf, oldval))
  free(oldval);
}
