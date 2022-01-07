
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int index_type; } ;
struct TYPE_3__ {scalar_t__ type_info; } ;
typedef TYPE_1__ STypeInfo ;
typedef TYPE_2__ SLF_ARRAY ;


 int base_idx ;
 int p_types_list ;
 void* r_list_get_n (int ,int) ;

__attribute__((used)) static int get_array_index_type(void *type, void **ret_type) {
 STypeInfo *t = (STypeInfo *) type;
 SLF_ARRAY *lf_array = (SLF_ARRAY *) t->type_info;
 int curr_idx = lf_array->index_type;

 if (curr_idx < base_idx) {
  *ret_type = 0;
 } else {
  curr_idx -= base_idx;
  *ret_type = r_list_get_n(p_types_list, curr_idx);
 }

 return curr_idx;
}
