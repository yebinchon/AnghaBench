
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type_str_len; char* type_str; scalar_t__ curr_pos; } ;
typedef TYPE_1__ STypeCodeStr ;


 int TYPE_STR_LEN ;
 scalar_t__ calloc (int,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int init_type_code_str_struct(STypeCodeStr *type_coder_str) {



 type_coder_str->type_str_len = 1024;

 type_coder_str->type_str = (char *) calloc (1024, sizeof (char));
 if (!type_coder_str->type_str) {
  return 0;
 }
 memset (type_coder_str->type_str, 0, 1024 * sizeof(char));

 type_coder_str->curr_pos = 0;


 return 1;

}
