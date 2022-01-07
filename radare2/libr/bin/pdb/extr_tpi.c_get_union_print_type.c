
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* get_name ) (TYPE_1__*,char**) ;} ;
typedef TYPE_1__ STypeInfo ;


 scalar_t__ malloc (int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int stub1 (TYPE_1__*,char**) ;

__attribute__((used)) static void get_union_print_type(void *type, char **name) {
 STypeInfo *ti = (STypeInfo *) type;

 char *tmp_name = 0, *tmp1 = 0;
 int name_len = 0;


 ti->get_name (ti, &tmp_name);

 tmp1 = "union ";
 name_len = strlen (tmp1);
 if (tmp_name) {
  name_len += strlen (tmp_name);
 }
 *name = (char *) malloc (name_len + 1);
 if (!(*name)) {
  return;
 }

 strcpy (*name, tmp1);
 if (tmp_name) {
  strcat (*name, tmp_name);
 }





}
