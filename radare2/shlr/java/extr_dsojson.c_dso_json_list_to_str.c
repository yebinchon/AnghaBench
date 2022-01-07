
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ json_list; } ;
typedef TYPE_1__ DsoJsonList ;


 char* build_str_from_str_list_for_iterable (scalar_t__,int) ;
 char* strdup (char*) ;

char * dso_json_list_to_str (DsoJsonList *list) {
 if (list && list->json_list) {
  return build_str_from_str_list_for_iterable (list->json_list, 1);
 }
 return strdup ("[]");
}
