
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RListIter ;
typedef int RList ;


 scalar_t__ malloc (int) ;
 int memset (char*,int ,int) ;
 int r_list_iter_get (int *) ;
 scalar_t__ r_list_iter_next (int *) ;
 int * r_list_iterator (int *) ;

int alloc_format_flag_and_member_fields(RList *ptmp, char **flags_format_field, int *members_amount, char ***members_name_field) {
 int i = 0, size = 0;

 RListIter *it2 = r_list_iterator (ptmp);
 while (r_list_iter_next (it2)) {
  (void) r_list_iter_get (it2);
  *members_amount = *members_amount + 1;
 }
 if (!*members_amount) {
  return 0;
 }
 *flags_format_field = (char *) malloc (*members_amount + 1);
 memset (*flags_format_field, 0, *members_amount + 1);

 size = sizeof *members_name_field * (*members_amount);
 *members_name_field = (char **) malloc (size);
 for (i = 0; i < *members_amount; i++) {
  (*members_name_field)[i] = 0;
 }
 return 1;
}
