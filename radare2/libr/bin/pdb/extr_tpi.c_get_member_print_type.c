
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* get_index ) (TYPE_1__*,void**) ;int (* get_print_type ) (TYPE_1__*,char**) ;} ;
struct TYPE_6__ {TYPE_1__ type_data; } ;
typedef TYPE_1__ STypeInfo ;
typedef TYPE_2__ SType ;


 int R_FREE (char*) ;
 scalar_t__ malloc (int) ;
 int print_base_type (int,char**) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int stub1 (TYPE_1__*,void**) ;
 int stub2 (TYPE_1__*,char**) ;

__attribute__((used)) static void get_member_print_type(void *type, char **name) {
 STypeInfo *ti = (STypeInfo *) type;
 SType *t = 0;
 char *tmp_name = 0;
 int name_len = 0;
 int need_to_free = 1;
 int base_type = 0;

 base_type = ti->get_index (ti, (void **) &t);
 if (!t) {
  need_to_free = 0;
  print_base_type (base_type, &tmp_name);
 } else {
  ti = &t->type_data;
  ti->get_print_type (ti, &tmp_name);
 }

 name_len = strlen ("(member) ");
 if (tmp_name) {
  name_len += strlen (tmp_name);
 }
 *name = (char *) malloc (name_len + 1);
 if (!(*name)) {
  if (need_to_free) R_FREE (tmp_name);
  return;
 }

 strcpy(*name, "(member) ");
 if (tmp_name) {
  strcat (*name, tmp_name);
 }

 if (need_to_free) {
  R_FREE (tmp_name);
 }
}
