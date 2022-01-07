
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type_str_len; scalar_t__ type_str; } ;
typedef TYPE_1__ STypeCodeStr ;


 int R_FREE (scalar_t__) ;

__attribute__((used)) static void free_type_code_str_struct(STypeCodeStr *type_code_str) {
 if (type_code_str->type_str) {
  R_FREE (type_code_str->type_str);
 }
 type_code_str->type_str_len = 0;
}
