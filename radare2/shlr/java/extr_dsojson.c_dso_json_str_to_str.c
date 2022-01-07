
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; scalar_t__ data; } ;
typedef TYPE_1__ DsoJsonStr ;


 char* dso_json_convert_string (scalar_t__,scalar_t__) ;

char * dso_json_str_to_str (DsoJsonStr *str) {
 if (str && str->data && str->len> 0) {
  return dso_json_convert_string (str->data, str->len);
 }
 return ((void*)0);
}
