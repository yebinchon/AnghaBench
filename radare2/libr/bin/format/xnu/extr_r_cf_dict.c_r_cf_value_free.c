
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef int RCFValueString ;
typedef int RCFValueNULL ;
typedef int RCFValueInteger ;
typedef int RCFValueDict ;
typedef int RCFValueData ;
typedef int RCFValueBool ;
typedef int RCFValueArray ;
typedef TYPE_1__ RCFValue ;
 int r_cf_value_array_free (int *) ;
 int r_cf_value_bool_free (int *) ;
 int r_cf_value_data_free (int *) ;
 int r_cf_value_dict_free (int *) ;
 int r_cf_value_integer_free (int *) ;
 int r_cf_value_null_free (int *) ;
 int r_cf_value_string_free (int *) ;

__attribute__((used)) static void r_cf_value_free(RCFValue *value) {
 if (!value) {
  return;
 }

 switch (value->type) {
 case 133:
  r_cf_value_dict_free ((RCFValueDict *)value);
  break;
 case 135:
  r_cf_value_array_free ((RCFValueArray *)value);
  break;
 case 129:
  r_cf_value_string_free ((RCFValueString *)value);
  break;
 case 131:
  r_cf_value_integer_free ((RCFValueInteger *)value);
  break;
 case 134:
  r_cf_value_data_free ((RCFValueData *)value);
  break;
 case 130:
  r_cf_value_null_free ((RCFValueNULL *)value);
  break;
 case 128:
 case 132:
  r_cf_value_bool_free ((RCFValueBool *)value);
  break;
 default:
  break;
 }
}
